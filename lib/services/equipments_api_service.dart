// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:egczacademy/models/equipment_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../app/global.dart';
import '../models/paging_model.dart';

class EquipmentsAPIService {
  List<EquipmentModel>? _equipments;
  List<EquipmentModel>? get equipments => _equipments;
  PagingModel? _pagingModel;
  PagingModel? get pagingModel => _pagingModel;
  final int _perPage = 100;

  Future<void> fetchAllEquipments(
      {required String token, bool fetchMore = false}) async {
    String removeUnnessaryfields =
        "&onlyfields=id,name,brand_id,image_id,description,price,stock,status";
    String url =
        "$urlApi/equipments?per_page=$_perPage&nobook=true$removeUnnessaryfields";

    if (fetchMore) {
      url =
          "${_pagingModel!.next_page_url}&per_page=$_perPage&nobook=true$removeUnnessaryfields";
    }
    try {
      final respo = await http.get(Uri.parse(url), headers: {
        "Accept": "application/json",
        "Authorization": "Bearer $token",
      });
      if (respo.statusCode == 200) {
        var data = json.decode(respo.body);
        try {
          debugPrint("FETCH EQUIPMENTS PASS");
          List fertchEquipment = data['data'];

          if (fetchMore) {
            _equipments!.addAll(fertchEquipment
                .map((e) => EquipmentModel.fromJson(e))
                .toList());
          } else {
            _equipments =
                fertchEquipment.map((e) => EquipmentModel.fromJson(e)).toList();
          }

          _pagingModel = PagingModel(
            current_page: data['current_page'],
            first_page_url: data['first_page_url'],
            next_page_url: data['next_page_url'],
            prev_page_url: data['prev_page_url'],
            total: data['total'],
          );
        } catch (e) {
          print(e);
          debugPrint("FROMJSON FAIL");
        }
      } else {
        debugPrint("SERVER FAIL fetchAllEquipments");
      }
    } catch (e) {
      print(e);
      debugPrint("FETCH EQUIPMENTS FAIL");
    }
  }
}
