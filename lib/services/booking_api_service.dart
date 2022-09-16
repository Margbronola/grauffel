import 'dart:convert';

import 'package:egczacademy/models/activity_model.dart';
import 'package:egczacademy/models/ammunitions_model.dart';
import 'package:egczacademy/models/book_cell_model.dart';
import 'package:egczacademy/models/book_course_model.dart';
import 'package:egczacademy/models/booking_model.dart';
import 'package:egczacademy/models/course_model.dart';
import 'package:egczacademy/models/equipment_model.dart';
import 'package:egczacademy/models/gunModel/gun_model.dart';
import 'package:egczacademy/models/time_model.dart';
import 'package:http/http.dart' as http;
import '../app/global.dart';
import '../models/paging_model.dart';

class BookingAPIService {
  List<BookingModel>? _bookings;
  List<BookingModel>? get bookings => _bookings;
  List<ActivityModel> _bookable = [];
  List<ActivityModel>? get bookable => _bookable;

  List<CourseModel> _bookableCourse = [];
  List<CourseModel>? get bookableCourse => _bookableCourse;

  List<TimeModel>? _availableTime;
  List<TimeModel>? get availableTime => _availableTime;
  PagingModel? _pagingModel;
  final int _perPage = 10;

  List<BookingModel>? actives = [];
  List<BookingModel>? past = [];

  fetchActivesAndPast(token, id) async {
    await fetchMyBookings(token: token, userId: id).whenComplete(() {
      if (bookings != null) {
        actives = bookings!
            .where((e) => e.status_name!.toLowerCase() == "active")
            .toList();
        print("ACTIVES");
        print(actives!.length);

        past = bookings!
            .where((e) =>
                e.status_name!.toLowerCase() == "done" ||
                e.status_name!.toLowerCase() == "cancel")
            .toList();
      }
      print("Actives: ${actives!.length}");
      print("Past: ${past!.length}");
    });
  }

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
        "Content-Type": "application/json",
        "Authorization": "Bearer $token",
      });
      if (respo.statusCode == 200) {
        var data = json.decode(respo.body);
        try {
          print("FETCH BOOKINGS PASS 2");
          List fetchBookings = data;
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
        "Content-Type": "application/json",
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
            if (_bookable[x].description != null) {
              _bookable[x] = _bookable[x].copyWith(
                  description: _bookable[x]
                      .description!
                      .replaceAll("<p>", "")
                      .replaceAll("</p>", ""));
            }

            if (_bookable[x].name!.toLowerCase().startsWith("tir")) {
              _bookable[x] =
                  _bookable[x].copyWith(image: "assets/images/precision.jpg");
            }
            if (_bookable[x].name!.toLowerCase().startsWith("fun")) {
              _bookable[x] =
                  _bookable[x].copyWith(image: "assets/images/funshoot.jpg");
            }
          }

          for (CourseModel x in _bookableCourse) {
            x = x.copyWith(
                description: x.description!
                    .replaceAll("<p>", "")
                    .replaceAll("</p>", ""));
            _bookable.add(ActivityModel(
                id: x.id,
                image: "assets/images/course.jpg",
                name: x.name,
                start_time: x.start_time,
                end_time: x.end_time,
                date_from: x.date_from,
                date_to: x.date_to,
                price: x.price,
                status: 2,
                description: x.description));
          }
          _bookable.add(ActivityModel(
              image: "assets/images/alv.jpg",
              name: alveoles,
              description:
                  "Pour vous et vos amis afin de pratiquer le tir 25m ou du Fun Shoot en dehors des heures d'ouverture"));
        } catch (e) {
          print(e);
          print("FROMJSON activities FAIL");
        }
      } else {
        print("SERVER FAIL");
      }
    } catch (e) {
      print(e);
      print("FETCH BOOKIGNS FAIL");
    }
  }

  Future<void> fetch({required String token}) async {
    try {
      final respo =
          await http.get(Uri.parse("$urlApi/active/courses"), headers: {
        "Authorization": "Bearer $token",
      });
      print("FETCH COURSES");
      if (respo.statusCode == 200) {
        var data = json.decode(respo.body);
        try {
          print(data);
          List fetchCouresList = data;
          _bookableCourse =
              fetchCouresList.map((e) => CourseModel.fromJson(e)).toList();
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
            "Content-Type": "application/json",
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

  Future<bool> book({
    required String token,
    required DateTime date,
    required String time,
    required int activityId,
    required List<GunModel> guns,
    required List<AmmunitionsModel> ammunitions,
    required List<EquipmentModel> equipments,
  }) async {
    print(activityId);
    try {
      final respo = await http.post(Uri.parse("$urlApi/book/cell"),
          headers: {
            "Content-Type": "application/json",
            "Authorization": "Bearer $token",
          },
          body: json.encode(BookCellModel(
                  date: "${date.year}-${date.month}-${date.day}",
                  time: time.split("-")[0],
                  activity_id: activityId,
                  guns: guns,
                  ammunitions: ammunitions,
                  equipments: equipments)
              .toJson()));
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
        return true;
      } else {
        print(respo.body);
        print("SERVER FAIL");
        return false;
      }
    } catch (e) {
      print(e);
      print("FETCH BOOKIGNS FAIL");
    }
    return false;
  }

  Future<bool> bookCourse({
    required int course_id,
    required String token,
    required List<GunModel> guns,
    required List<AmmunitionsModel> ammunitions,
    required List<EquipmentModel> equipments,
  }) async {
    try {
      final respo = await http.post(Uri.parse("$urlApi/book/course"),
          headers: {
            "Content-Type": "application/json",
            "Authorization": "Bearer $token",
          },
          body: json.encode(BookCourseModel(
                  course_id: course_id,
                  guns: guns,
                  ammunitions: ammunitions,
                  equipments: equipments)
              .toJson()));
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
        return true;
      } else {
        print(respo.body);
        print("SERVER FAIL");
        return false;
      }
    } catch (e) {
      print(e);
      print("FETCH BOOKIGNS FAIL");
    }
    return false;
  }
}
