import 'dart:convert';
import 'package:egczacademy/models/course_model.dart';
import 'package:http/http.dart' as http;
import '../app/global.dart';
import '../models/paging_model.dart';

class CourseAPIService {
  final int _perPage = 10;
  PagingModel? _pagingModel;
  PagingModel? get pagingModel => _pagingModel;
  List<CourseModel>? _courses;
  List<CourseModel>? get courses => _courses;

  void reset() {
    if (_courses != null) {
      print("RESETING");
      _courses = null;
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
        await fetch(
          token: token,
        );
      }
    }
  }

  Future<void> fetch({required String token}) async {
    try {
      final respo = await http
          .get(Uri.parse("$urlApi/courses?per_page=$_perPage"), headers: {
        "Accept": "application/json",
        "Authorization": "Bearer $token",
      });
      print("FETCH COURSES");
      if (respo.statusCode == 200) {
        var data = json.decode(respo.body);
        try {
          List fetchCouresList = data['data'];
          _pagingModel = PagingModel(
            total: data['total'],
            current_page: data['current_page'],
            first_page_url: data['first_page_url'],
            next_page_url: data['next_page_url'],
            prev_page_url: data['prev_page_url'],
          );
          _courses =
              fetchCouresList.map((e) => CourseModel.fromJson(e)).toList();
          print(_courses);
        } catch (e) {
          print(e);
          print("FROMJSON FAIL");
        }
      } else {
        print(respo.body);
        print("SERVER FAIL");
      }
    } catch (e) {
      print(e);
      print("FETCH COURSES FAIL");
    }
    return;
  }
}
