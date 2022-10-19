import 'dart:convert';
import 'package:egczacademy/models/gunModel/caliber_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../app/global.dart';
import '../models/paging_model.dart';

class CaliberAPIService {
  final int _perPage = 11;
  PagingModel? _pagingModel;
  PagingModel? get pagingModel => _pagingModel;

  List<CaliberModel>? _caliber;
  List<CaliberModel>? get caliber => _caliber;

  Future loadMore({required String token}) async {
    if (pagingModel != null) {
      if (pagingModel!.next_page_url != null) {
        _pagingModel = _pagingModel!.copyWith(
          current_page: _pagingModel!.current_page! + 1,
        );
        await fetchCaliber(
          token: token,
        );
      }
    }
  }

  Future<void> fetchCaliber({required String token}) async {
    if (pagingModel != null) {
      if (pagingModel!.next_page_url != null) {
        _pagingModel = _pagingModel!
            .copyWith(current_page: _pagingModel!.current_page! + 1);
      }
    }
    try {
      final respo = await http.get(
          Uri.parse(
              "$urlApi/calibers?per_page=$_perPage${pagingModel != null ? "&page=${pagingModel!.current_page}" : ""}"),
          headers: {
            "Accept": "application/json",
            "Authorization": "Bearer $token",
          });
      if (respo.statusCode == 200) {
        var data = json.decode(respo.body);
        try {
          debugPrint("FETCH CALIBER PASS");
          List fetchCaliberList = data['data'];
          _pagingModel = PagingModel(
            total: data['total'],
            current_page: data['current_page'],
            first_page_url: data['first_page_url'],
            next_page_url: data['next_page_url'],
            prev_page_url: data['prev_page_url'],
          );
          if (caliber == null) {
            _caliber =
                fetchCaliberList.map((e) => CaliberModel.fromJson(e)).toList();
          } else {
            caliber!.addAll(
                fetchCaliberList.map((e) => CaliberModel.fromJson(e)).toList());
          }
        } catch (e) {
          print(e);
          debugPrint("FROMJSON FAIL");
        }
      } else {
        debugPrint("SERVER FAIL fetchCaliber");
      }
    } catch (e) {
      print(e);
      debugPrint("FETCH CALIBER FAIL");
    }
    return;
  }
}
