import 'dart:convert';

import 'package:egczacademy/models/activity_model.dart';
import 'package:egczacademy/models/booking_model.dart';
import 'package:egczacademy/models/time_model.dart';
import 'package:http/http.dart' as http;
import '../app/global.dart';
import '../models/paging_model.dart';

class BookingAPIService {
  List<BookingModel>? _bookings;
  List<BookingModel>? get bookings => _bookings;
  List<ActivityModel> _bookable = [];
  List<ActivityModel>? get bookable => _bookable;
  List<TimeModel>? _availableTime;
  List<TimeModel>? get availableTime => _availableTime;
  PagingModel? _pagingModel;
  final int _perPage = 10;

  // _bookable = [
  //   const BookableModel(
  //     image: "assets/images/precision.jpg",
  //     name: "Tir Précision",
  //     description:
  //         "Réservez un PAS DE TIR pour pratiquer du tir statique sur cible fixe",
  //   ),
  //   const BookableModel(
  //       image: "assets/images/funshoot.jpg",
  //       name: "Fun shoot",
  //       description:
  //           "Réservez un PAS DE TIR pour pratiquer du tir statique sur cible fixe"),
  //   const BookableModel(
  //       image: "assets/images/course.jpg",
  //       name: courseTSV,
  //       description:
  //           "Le TSV est une pratique dynamique du tir sportif Réservés aux abonnés Gold TSV & Black"),
  //   const BookableModel(
  //       image: "assets/images/alv.jpg",
  //       name: "Alvéoles",
  //       description:
  //           "Pour vous et vos amis afin de pratiquer le tir 25m ou du Fun Shoot en dehors des heures d'ouverture")
  // ];

  Future<void> fetchMyBookings(
      {required String token, required String userId}) async {
    try {
      final respo = await http
          .get(Uri.parse("$urlApi/bookings?client_id=$userId"), headers: {
        "Accept": "application/json",
        "Authorization": "Bearer $token",
      });
      if (respo.statusCode == 200) {
        var data = json.decode(respo.body);
        try {
          print("FETCH BOOKINGS PASS");
          List fetchBookings = data['data'];
          _bookings =
              fetchBookings.map((e) => BookingModel.fromJson(e)).toList();
          print(_bookings);
          // _pagingModel = PagingModel(
          //   current_page: data['current_page'],
          //   first_page_url: data['first_page_url'],
          //   next_page_url: data['next_page_url'],
          //   prev_page_url: data['prev_page_url'],
          // );
          // print(_pagingModel);
        } catch (e) {
          print(e);
          print("FROMJSON FAIL");
        }
      } else {
        print("SERVER FAIL");
      }
    } catch (e) {
      print(e);
      print("FETCH BOOKIGNS FAIL");
    }
  }

  Future<void> fetchBookable({required String token}) async {
    try {
      final respo = await http.get(Uri.parse("$urlApi/activities"), headers: {
        "Accept": "application/json",
        "Authorization": "Bearer $token",
      });
      if (respo.statusCode == 200) {
        var data = json.decode(respo.body);
        try {
          List fetchBookable = data;
          _bookable =
              fetchBookable.map((e) => ActivityModel.fromJson(e)).toList();

          List<ActivityModel> copy =
              fetchBookable.map((e) => ActivityModel.fromJson(e)).toList();
          print(fetchBookable);
          for (var x = 0; x <= _bookable.length - 1; x++) {
            _bookable[x] = _bookable[x].copyWith(
                description: _bookable[x]
                    .description!
                    .replaceAll("<p>", "")
                    .replaceAll("</p>", ""));

            if (_bookable[x].name!.toLowerCase().startsWith("tir")) {
              _bookable[x] =
                  _bookable[x].copyWith(image: "assets/images/precision.jpg");
            }
            if (_bookable[x].name!.toLowerCase().startsWith("fun")) {
              _bookable[x] =
                  _bookable[x].copyWith(image: "assets/images/funshoot.jpg");
            }
          }

          _bookable.add(ActivityModel(
              image: "assets/images/course.jpg",
              name: courseTSV,
              description:
                  "Le TSV est une pratique dynamique du tir sportif Réservés aux abonnés Gold TSV & Black"));
          _bookable.add(ActivityModel(
              image: "assets/images/alv.jpg",
              name: alveoles,
              description:
                  "Pour vous et vos amis afin de pratiquer le tir 25m ou du Fun Shoot en dehors des heures d'ouverture"));
        } catch (e) {
          print(e);
          print("FROMJSON FAIL");
        }
      } else {
        print("SERVER FAIL");
      }
    } catch (e) {
      print(e);
      print("FETCH BOOKIGNS FAIL");
    }
  }

  // void courseSetupTime(
  //     {required List<CourseModel> courses, required DateTime date}) {
  //   print("courseSetup");
  //   print(courses);

  //   List<CourseModel> courseByDate = courses.where((element) {
  //     return DateFormat.yMd().format(element.datetime!) ==
  //         DateFormat.yMd().format(date);
  //   }).toList();
  //   _availableTime = courseByDate
  //       .map((e) =>
  //           TimeModel(avaiable: 1, time: "${e.start_time}:00-${e.end_time}:00"))
  //       .toList();
  // }

  Future<void> fetchBookableActivity({
    required String token,
    required DateTime date,
    required int activity_id,
  }) async {
    print("ACTIVITY DATA");
    print(activity_id);

    try {
      final respo = await http.get(
          Uri.parse(
              "$urlApi/activity/$activity_id/timetable?date=${date.month}/${date.day}/${date.year}"),
          headers: {
            "Accept": "application/json",
            "Authorization": "Bearer $token",
          });
      if (respo.statusCode == 200) {
        var data = json.decode(respo.body);
        try {
          print("FETCH TIMEACTIVITY PASS");
          List time = data;
          _availableTime = time.map((e) => TimeModel.fromJson(e)).toList();

          //TODO delete this before release
          print(data);
          print(_availableTime);
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
      print("FETCH TIMEACTIVITY FAIL");
    }
  }

  Future<void> book({
    required String token,
    required DateTime date,
    required String time,
    required int activityId,
    required List<Map> guns,
    required List<Map> ammunitions,
    required List<Map> equipments,
  }) async {
    try {
      final respo = await http.post(Uri.parse("$urlApi/book/cell"), headers: {
        "Accept": "application/json",
        "Authorization": "Bearer $token",
      }, body: {
        "date": "${date.year}-${date.month}-${date.day}",
        "time": time,
        "activity_id": activityId.toString(),
        "guns": guns.toString(),
        "ammunitions": ammunitions.toString(),
        "equipments": equipments.toString()
      });
      if (respo.statusCode == 200) {
        print("book pass");

        var data = json.decode(respo.body);
        print(data);
        try {
          print("BOOKING SEND");
          print(data);
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
      print("FETCH BOOKIGNS FAIL");
    }
  }
}
