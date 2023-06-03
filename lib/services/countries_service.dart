// ignore_for_file: avoid_print

import 'dart:convert';
import 'package:egczacademy/models/gunModel/country_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../app/global.dart';

class CountriesService {
  Future<List<CountryModel>> fetchCountries({required String token}) async {
    try {
      final respo = await http.get(Uri.parse("$urlApi/countries"), headers: {
        "Accept": "application/json",
        "Authorization": "Bearer $token",
      });
      if (respo.statusCode == 200) {
        var data = json.decode(respo.body);
        try {
          List fetchCountries = data;

          List<CountryModel>? countries =
              fetchCountries.map((e) => CountryModel.fromJson(e)).toList();
          return countries;
        } catch (e) {
          print(e);
          debugPrint("FROMJSON COUNTRIES FAIL");
        }
      } else {
        debugPrint("SERVER COUNTRIES FAIL");
      }
    } catch (e) {
      print(e);
      debugPrint("FETCH COUNTRIES FAIL");
    }
    return [];
  }
}
