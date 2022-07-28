import 'dart:convert';
import 'package:egczacademy/models/gunModel/brand_model.dart';
import 'package:http/http.dart' as http;
import '../app/global.dart';
import '../models/paging_model.dart';

class BrandAPIService {
  final int _perPage = 11;
  PagingModel? _pagingModel;
  PagingModel? get pagingModel => _pagingModel;
  List<BrandModel>? _brands;
  List<BrandModel>? get brands => _brands;

  void reset() {
    if (_brands != null) {
      print("RESETING");
      _brands!.clear();
      _pagingModel = null;
    }
  }

  Future loadMore({required String token, required int typeId}) async {
    if (pagingModel != null) {
      if (pagingModel!.next_page_url != null) {
        _pagingModel = _pagingModel!.copyWith(
          current_page: _pagingModel!.current_page! + 1,
        );
        print(_pagingModel!.current_page!);
        await fetch(token: token, typeId: typeId);
      }
    }
  }

  Future<void> fetch({required String token, required int typeId}) async {
    try {
      final respo = await http.get(
          Uri.parse(
              "$urlApi/brands?per_page=$_perPage${pagingModel != null ? "&page=${pagingModel!.current_page}" : ""}&type_id=$typeId"),
          headers: {
            "Accept": "application/json",
            "Authorization": "Bearer $token",
          });
      if (respo.statusCode == 200) {
        var data = json.decode(respo.body);
        try {
          print(data);
          print("FETCH BRANDS PASS");
          List fetchBrandList = data['data'];
          _pagingModel = PagingModel(
            total: data['total'],
            current_page: data['current_page'],
            first_page_url: data['first_page_url'],
            next_page_url: data['next_page_url'],
            prev_page_url: data['prev_page_url'],
          );
          print(_pagingModel);
          if (_brands == null) {
            print("FIRST FETCH");
            _brands =
                fetchBrandList.map((e) => BrandModel.fromJson(e)).toList();
          } else {
            print("APPEND");
            _brands!.addAll(
                fetchBrandList.map((e) => BrandModel.fromJson(e)).toList());
          }
        } catch (e) {
          print(e);
          print("FROMJSON FAIL");
        }
      } else {
        print("SERVER FAIL");
      }
    } catch (e) {
      print(e);
      print("FETCH BRANDS FAIL");
    }
    return;
  }
}
