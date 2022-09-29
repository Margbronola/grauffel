import 'dart:convert';

import 'package:egczacademy/models/ammunitions_model.dart';
import 'package:http/http.dart' as http;
import '../app/global.dart';
import '../models/paging_model.dart';

class AmmunitionAPIService {
  List<AmmunitionsModel>? _ammunitions;
  List<AmmunitionsModel>? get ammunitions => _ammunitions;
  PagingModel? _pagingModel;
  PagingModel? get pagingModel => _pagingModel;
  final int _perPage = 6;

  Future<void> fetchAllAmunition(
      {required String token,
      bool fetchMore = false,
      List<int>? brandIds,
      List<int>? caliberIds}) async {
    String url = "$urlApi/ammunitions?per_page=$_perPage";

    if (brandIds != null) {
      String brands = brandIds.join(', ');
      if (brandIds.isNotEmpty) {
        url += "&brand_id=$brands";
      }
      print("BRANDS");
      print(brands);
    }
    if (caliberIds != null) {
      String calibers = caliberIds.join(', ');
      if (caliberIds.isNotEmpty) {
        url += "&caliber_id=$calibers";
      }
    }
    if (fetchMore) {
      url = "${_pagingModel!.next_page_url}&per_page=$_perPage";
    }

    try {
      final respo = await http.get(Uri.parse(url), headers: {
        "Accept": "application/json",
        "Authorization": "Bearer $token",
      });
      if (respo.statusCode == 200) {
        var data = json.decode(respo.body);
        try {
          print("FETCH AMMUNITION PASS");
          List fetchAmmunition = data['data'];

          if (fetchMore) {
            print("FETCHING morel");

            _ammunitions!.addAll(fetchAmmunition
                .map((e) => AmmunitionsModel.fromJson(e))
                .toList());
          } else {
            _ammunitions = fetchAmmunition
                .map((e) => AmmunitionsModel.fromJson(e))
                .toList();
          }

          _pagingModel = PagingModel(
            current_page: data['current_page'],
            first_page_url: data['first_page_url'],
            next_page_url: data['next_page_url'],
            prev_page_url: data['prev_page_url'],
            total: data['total'],
          );

          print(_ammunitions);
          print(_pagingModel);
        } catch (e) {
          print(e);
          print("FROMJSON FAIL");
        }
      } else {
        print("SERVER FAIL");
      }
    } catch (e) {
      print(e);
      print("FETCH AMMUNITION FAIL");
    }
  }
}
