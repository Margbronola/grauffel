import 'dart:convert';

import 'package:egczacademy/models/activity_model.dart';
import 'package:egczacademy/models/booking_model.dart';
import 'package:egczacademy/models/time_model.dart';
import 'package:http/http.dart' as http;
import '../app/global.dart';
import '../models/course_model.dart';
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
  //       name: "Cours tsv",
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
          print(fetchBookings);

          _bookings =
              fetchBookings.map((e) => BookingModel.fromJson(e)).toList();
          print(_bookings);
          // _pagingModel = PagingModel(
          //   current_page: data['current_page'],
          //   first_page_url: data['first_page_url'],
          //   next_page_url: data['next_page_url'],
          //   prev_page_url: data['prev_page_url'],
          // );

          print(_bookings);
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

          for (var x = 0; x <= _bookable.length - 1; x++) {
            print(_bookable[x].name);
            if (_bookable[x].name!.toLowerCase().startsWith("tir")) {
              _bookable[x] =
                  _bookable[x].copyWith(image: "assets/images/precision.jpg");
            }
            if (_bookable[x].name!.toLowerCase().startsWith("fun")) {
              _bookable[x] =
                  _bookable[x].copyWith(image: "assets/images/funshoot.jpg");
            }
          }

          if (copy
              .where(
                  (element) => element.name!.toLowerCase() == "tir précision")
              .toList()
              .isNotEmpty) {
            _bookable[0] = copy
                .firstWhere(
                    (element) => element.name!.toLowerCase() == "tir précision")
                .copyWith(image: "assets/images/precision.jpg");
          }

          _bookable.add(const ActivityModel(
              image: "assets/images/course.jpg",
              name: "Cours tsv",
              description:
                  "Le TSV est une pratique dynamique du tir sportif Réservés aux abonnés Gold TSV & Black"));
          _bookable.add(const ActivityModel(
              image: "assets/images/alv.jpg",
              name: "Alvéoles",
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

  void courseSetupTime(
      {required List<CourseModel> courses, required DateTime date}) {
    print("courseSetup");
    courses = courses
        .where((element) => element.datetime!.toUtc() == date.toUtc())
        .toList();
    _availableTime = courses
        .map((e) => TimeModel(
            time:
                "${e.start_time!.replaceAll(":", "h")} - ${e.end_time!.replaceAll(":", "h")}"))
        .toList();

    print(courses.length);
    print(_availableTime!.length);
  }

  Future<void> fetchBookableActivity(
      {required String token,
      required DateTime date,
      required int activity_id,
      required int client_id}) async {
    print("ACTIVITY DATA");
    print(date);
    print(activity_id);
    print(client_id);
    try {
      final respo =
          await http.post(Uri.parse("$urlApi/bookable/activity"), body: {
        "date": date.toString(),
        "activity_id": activity_id.toString(),
        "client_id": client_id.toString()
      }, headers: {
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

  Future<void> book(
      {required String token, required BookingModel booking}) async {
    try {
      final respo = await http.post(Uri.parse("$urlApi/bookings"), headers: {
        "Accept": "application/json",
        "Authorization": "Bearer $token",
      }, body: {
        "activity": booking.activity!.toJson()
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
