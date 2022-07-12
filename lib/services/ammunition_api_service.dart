import 'dart:convert';

import 'package:egczacademy/models/ammunitions_model.dart';
import 'package:http/http.dart' as http;
import '../app/global.dart';
import '../models/paging_model.dart';

class AmmunitionAPIService {
  List<AmmunitionsModel>? _ammunitions;
  List<AmmunitionsModel>? get ammunitions => _ammunitions;
  PagingModel? _pagingModel;
  final int _perPage = 10;
  Future<void> fetchAllAmunition({required String token}) async {
    try {
      final respo = await http
          .get(Uri.parse("$urlApi/ammunitions?per_page=$_perPage"), headers: {
        "Accept": "application/json",
        "Authorization": "Bearer $token",
      });
      if (respo.statusCode == 200) {
        var data = json.decode(respo.body);
        try {
          print("FETCH AMMUNITION PASS");
          List fetchGuns = data['data'];
          _ammunitions =
              fetchGuns.map((e) => AmmunitionsModel.fromJson(e)).toList();
          _pagingModel = PagingModel(
            current_page: data['current_page'],
            first_page_url: data['first_page_url'],
            next_page_url: data['next_page_url'],
            prev_page_url: data['prev_page_url'],
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
