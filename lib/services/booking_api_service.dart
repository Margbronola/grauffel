// ignore_for_file: avoid_print

import 'dart:convert';
import 'dart:io';
import 'package:egczacademy/models/activity_model.dart';
import 'package:egczacademy/models/ammunitions_model.dart';
import 'package:egczacademy/models/book_course_model.dart';
import 'package:egczacademy/models/booking_model.dart';
import 'package:egczacademy/models/course_model.dart';
import 'package:egczacademy/models/equipment_model.dart';
import 'package:egczacademy/models/gunModel/gun_model.dart';
import 'package:egczacademy/models/time_model.dart';
import 'package:http/http.dart' as http;
import '../app/global.dart';

class BookingAPIService {
  List<BookingModel>? _bookings;
  List<BookingModel>? get bookings => _bookings;
  List<ActivityModel> _bookable = [];
  List<ActivityModel>? get bookable => _bookable;

  List<CourseModel> _bookableCourse = [];
  List<CourseModel>? get bookableCourse => _bookableCourse;

  List<TimeModel> _availableTime = [];
  List<TimeModel>? get availableTime => _availableTime;

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
                e.status_name!.toLowerCase() == "cancelled invoiced" ||
                e.status_name!.toLowerCase() == "cancelled and refunded")
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
        // debugPrint(data);
        try {
          print("RESERVATION DATA: $data");
          print("FETCH BOOKINGS PASS 2");

          List fetchBookings = data['data'];

          _bookings =
              fetchBookings.map((e) => BookingModel.fromJson(e)).toList();

          // _pagingModel = PagingModel(
          //   current_page: data['current_page'],
          //   first_page_url: data['first_page_url'],
          //   next_page_url: data['next_page_url'],
          //   prev_page_url: data['prev_page_url'],
          // );
          // print(_pagingModel);
        } catch (e) {
          print("MAYDA ERROR $e");
          print(e);
          print("FROMJSON FAIL");
        }
      } else {
        print("SERVER FAIL fetchMyBookings");
      }
    } catch (e) {
      print(e);
      print("FETCH BOOKIGNS FAIL");
    }
  }

  Future<void> fetchBookable({required String token}) async {
    try {
      final respo = await http.get(Uri.parse("$urlApi/activities"), headers: {
        "Content-type": "application/json",
        "Authorization": "Bearer $token",
      });
      if (respo.statusCode == 200) {
        var data = json.decode(respo.body);
        try {
          List fetchBookable = data;
          _bookable =
              fetchBookable.map((e) => ActivityModel.fromJson(e)).toList();

          for (var x = 0; x <= _bookable.length - 1; x++) {
            if (_bookable[x].description != null) {
              _bookable[x] = _bookable[x].copyWith(
                  description: removeHtmlTags(_bookable[x].description!));
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
            x = x.copyWith(description: removeHtmlTags(x.description!));
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
        print("SERVER FAIL fetchBookable");
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
        print("SERVER FAIL fetch courses");
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
    required int activityId,
  }) async {
    print("ACTIVITY DATA");
    try {
      final respo = await http.get(
          Uri.parse(
              "$urlApi/activity/$activityId/timetable?date=${date.month}/${date.day}/${date.year}"),
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
        print("SERVER FAIL fetchBookableActivity");
      }
    } catch (e) {
      print(e);
      print("FETCH TIMEACTIVITY FAIL");
    }
  }

  Future<bool> cancelBook(
      {required int bookingId, required String token}) async {
    try {
      final respo = await http.get(
        Uri.parse("$urlApi/bookings/$bookingId/cancel"),
        headers: {
          "Content-Type": "application/json",
          "Authorization": "Bearer $token",
        },
      );
      if (respo.statusCode == 200) {
        print("bookcancel pass");

        var data = json.decode(respo.body);

        try {
          print("bookcancel SEND");
          print(data);
        } catch (e) {
          print(e);
          print("FROMJSON FAIL");
        }
        return true;
      } else {
        print(respo.body);
        print("SERVER FAIL cancelBook");
        return false;
      }
    } catch (e) {
      print(e);
      print("FETCH bookcancel FAIL");
    }
    return false;
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
    try {
      final Map bod = {
        "date": "${date.year}-${date.month}-${date.day}",
        "time": time.split("-")[0],
        "activity_id": activityId.toString(),
        "guns": guns.map((e) => e.toJson()).toList(),
        "ammunitions": ammunitions.map((e) => e.toJson()).toList(),
        "equipments": equipments.map((e) => e.toJson()).toList(),
      };
      return await http
          .post(
        Uri.parse("$urlApi/book/cell"),
        headers: {
          HttpHeaders.authorizationHeader: "Bearer $token",
          "Content-type": "application/json",
        },
        body: json.encode(bod),
        // body: json.decode(
        //   json.encode(
        // BookCellModel(
        //         date: "${date.year}-${date.month}-${date.day}",
        //         time: time.split("-")[0],
        //         activity_id: activityId,
        //         guns: guns,
        //         ammunitions: ammunitions,
        //         equipments: equipments)
        //     .toJson(),
        //   ),
        // ),
      )
          .then((response) {
        var data = json.decode(response.body);
        print("DATA : $data");
        return response.statusCode == 200;
      });
    } catch (e) {
      print("ERROR BOOK! : $e");
      return false;
    }
  }

  Future<bool> bookCourse({
    required int courseId,
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
                  course_id: courseId,
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
        print("SERVER FAIL bookCourses");
        return false;
      }
    } catch (e) {
      print(e);
      print("FETCH BOOKIGNS FAIL");
    }
    return false;
  }
}
