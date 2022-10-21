import 'dart:convert';

import 'package:egczacademy/models/activity_model.dart';
import 'package:egczacademy/models/paging_model.dart';
import 'package:egczacademy/models/time_model.dart';
import 'package:flutter/material.dart';
import '../app/global.dart';
import '../models/gunModel/gun_model.dart';
import 'package:http/http.dart' as http;

class GunAPIService {
  List<GunModel>? _guns;
  List<GunModel>? get guns => _guns;
  PagingModel? _pagingModel;
  PagingModel? get pagingModel => _pagingModel;
  final int _perPage = 6;

  Future<void> fetchAllGuns(
      {required String token,
      bool fetchMore = false,
      required ActivityModel booked,
      required String date,
      required TimeModel? time,
      List<int>? brandIds,
      List<int>? caliberIds}) async {
    print(date);
    print(time);
    print(booked);

    String startDate = "";
    String endDate = "";
    if (booked.type == null) {
      startDate = "${date.split(" ")[0]} ${time!.time!.split("-")[0]}";
      endDate = "${date.split(" ")[0]} ${time.time!.split("-")[1]}";
    } else {
      startDate = "${booked.date_from} ${booked.start_time}";
      endDate = "${booked.date_to} ${booked.end_time}";
    }

    print("Date To pass");
    print(startDate);
    print(endDate);

    //dateformat --> 2022-02-01 10:00
    String url =
        "$urlApi/guns?per_page=$_perPage&nobook=true&booking=true&start_date=$startDate&end_date=$endDate";

    if (fetchMore) {
      url =
          "${_pagingModel!.next_page_url}&per_page=$_perPage&nobook=true&booking=true&start_date=$startDate&end_date=$endDate";
    }

    if (brandIds != null) {
      String brands = brandIds.join(', ');
      if (brandIds.isNotEmpty) {
        url += "&brand_id=$brands";
      }
      debugPrint("BRANDS");
      debugPrint(brands);
    }
    if (caliberIds != null) {
      String calibers = caliberIds.join(', ');
      if (caliberIds.isNotEmpty) {
        url += "&caliber_id=$calibers";
      }
    }

    try {
      final respo = await http.get(Uri.parse(url), headers: {
        "Accept": "application/json",
        "Authorization": "Bearer $token",
      });
      if (respo.statusCode == 200) {
        var data = json.decode(respo.body);
        try {
          debugPrint("FETCH GUNS PASS");
          List fetchGuns = data['data'];

          if (fetchMore) {
            debugPrint("FETCHING morel");
            _guns!.addAll(fetchGuns.map((e) => GunModel.fromJson(e)).toList());
          } else {
            _guns = fetchGuns.map((e) => GunModel.fromJson(e)).toList();
          }

          print(fetchGuns);

          _pagingModel = PagingModel(
              current_page: data['current_page'],
              first_page_url: data['first_page_url'],
              next_page_url: data['next_page_url'],
              prev_page_url: data['prev_page_url'],
              total: data['total']);
        } catch (e) {
          print(e);
          debugPrint("FROMJSON FAIL");
        }
      } else {
        debugPrint("SERVER FAIL fetch all guns");
      }
    } catch (e) {
      print(e);
      debugPrint("FETCH GUNS FAIL");
    }
  }
}
