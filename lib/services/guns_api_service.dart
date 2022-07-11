import 'dart:convert';

import 'package:egczacademy/models/gun_model.dart';
import 'package:egczacademy/models/paging_model.dart';
import 'package:http/http.dart' as http;
import '../app/global.dart';

class GunAPIService {
  List<GunModel>? _guns;
  List<GunModel>? get guns => _guns;
  PagingModel? _pagingModel;
  final int _perPage = 10;

  Future<void> fetchAllGuns({required String token}) async {
    try {
      final respo = await http
          .get(Uri.parse("$urlApi/guns?per_page=$_perPage"), headers: {
        "Accept": "application/json",
        "Authorization": "Bearer $token",
      });
      if (respo.statusCode == 200) {
        var data = json.decode(respo.body);
        try {
          print("FETCH GUNS PASS");
          List fetchGuns = data['data'];
          _guns = fetchGuns.map((e) => GunModel.fromJson(e)).toList();
          _pagingModel = PagingModel(
            current_page: data['current_page'],
            first_page_url: data['first_page_url'],
            next_page_url: data['next_page_url'],
            prev_page_url: data['prev_page_url'],
          );

          print(_guns);
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
      print("FETCH GUNS FAIL");
    }
  }
}
