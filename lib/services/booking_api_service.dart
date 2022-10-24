// ignore_for_file: avoid_print

import 'dart:convert';
import 'dart:io';
import 'package:egczacademy/extensions/string.dart';
import 'package:egczacademy/models/activity_model.dart';
import 'package:egczacademy/models/ammunitions_model.dart';
import 'package:egczacademy/models/book_model.dart';
import 'package:egczacademy/models/booking_model.dart';
import 'package:egczacademy/models/course_model.dart';
import 'package:egczacademy/models/equipment_model.dart';
import 'package:egczacademy/models/gunModel/gun_model.dart';
import 'package:egczacademy/models/time_model.dart';
import 'package:egczacademy/view_model/booking_vm.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import '../app/global.dart';
import '../models/book_course_model.dart';
import '../models/paging_model.dart';

class BookingAPIService {
  List<BookingModel>? _bookings;
  List<BookingModel>? get bookings => _bookings;

  List<CourseModel> _courses = [];
  List<CourseModel>? get courses => _courses;

  List<ActivityModel> _bookable = [];
  List<ActivityModel>? get bookable => _bookable;

  final List<ActivityModel> _bookableCourse = [];
  List<ActivityModel>? get bookableCourse => _bookableCourse;

  List<TimeModel> _availableTime = [];
  List<TimeModel>? get availableTime => _availableTime;

  List<BookingModel>? actives = [];
  List<BookingModel>? past = [];

  PagingModel? _pagingModel;
  PagingModel? get pagingModel => _pagingModel;
  final int _perPage = 6;
  static final BookingVm _bookVM = BookingVm.instance;
  //TODO: specific for active only
  //TODO: specific fetch for past
  Future<void> fetchBookingHistory({required String token}) async {
    try {
      print("FETCH?");
      return await http.get("$urlApi/client-bookings?per_page=$_perPage".toUri,
          headers: {
            HttpHeaders.authorizationHeader: "Bearer $token",
            "accept": "application/json"
          }).then((response) {
        if (response.statusCode == 200) {
          print("OK MAN DIDI");
          List data = json.decode(response.body);

          print(data);

          _bookVM.populate(data.map((e) => BookModel.fromJson(e)).toList());

          // _pagingModel = PagingModel(
          //     current_page: data['current_page'],
          //     first_page_url: data['first_page_url'],
          //     next_page_url: data['next_page_url'],
          //     prev_page_url: data['prev_page_url'],
          //     total: data['total']);
          return;
        }
        return;
      });
    } catch (e) {
      print("ERREUR RECUPERATION SUR HISTORIQUE de booking : $e");
      return;
    }
  }

  Future<BookingModel?> fetchBookingDetails(
      {required String token, required int bookId}) async {
    try {
      print("FETCH?");
      return await http.get("$urlApi/bookings/$bookId".toUri, headers: {
        HttpHeaders.authorizationHeader: "Bearer $token",
        "accept": "application/json"
      }).then((response) {
        if (response.statusCode == 200) {
          print("OK MAN DETAILS");
          var data = json.decode(response.body);
          print(data);

          return BookingModel.fromJson(data);
        }
        return null;
      });
    } catch (e) {
      print("ERREUR RECUPERATION SUR HISTORIQUE de booking : $e");
      return null;
    }
  }

  // fetchActivesAndPast(token, id, {fetchMore = false}) async {
  //   await fetchMyBookings(token: token, userId: id, fetchMore: fetchMore)
  //       .whenComplete(() {
  //     if (bookings != null) {
  //       actives = bookings!
  //           .where((e) => e.status_name!.toLowerCase() == "active")
  //           .toList();

  //       print("ACTIVES");
  //       print(actives!.length);
  //        past = bookings!
  //           .where((e) =>
  //               e.status_name!.toLowerCase() == "done" ||
  //               e.status_name!.toLowerCase() == "cancelled invoiced" ||
  //               e.status_name!.toLowerCase() == "cancelled and refunded")
  //           .toList();

  //       actives!.sort((a, b) => a.start!.compareTo(b.start!));
  //       past!.sort((a, b) => b.start!.compareTo(a.start!));
  //     }
  //     print("Actives: ${actives!.length}");
  //     print("Past: ${past!.length}");
  //   });
  // }

  Future<void> fetchMyBookings({
    required String token,
    required String userId,
    required fetchMore,
    required isActive,
  }) async {
    try {
      String url =
          "$urlApi/client-bookings?per_page=$_perPage&onlyfields=name,id,end,activitiy_id,bookable_id&active=$isActive";

      if (fetchMore) {
        url =
            "${_pagingModel!.next_page_url}&client_id=$userId&per_page=$_perPage";
      }
      final respo = await http.get(Uri.parse(url), headers: {
        "Content-Type": "application/json",
        "Authorization": "Bearer $token",
      });
      if (respo.statusCode == 200) {
        var data = json.decode(respo.body);

        try {
          print("RESERVATION DATA: $data");
          print("FETCH BOOKINGS PASS 2");

          List fetchBookings = data["data"];

          if (fetchMore) {
            debugPrint("FETCHING morel");
            _bookings!.addAll(
                fetchBookings.map((e) => BookingModel.fromJson(e)).toList());
          } else {
            _bookings =
                fetchBookings.map((e) => BookingModel.fromJson(e)).toList();
          }

          _pagingModel = PagingModel(
              current_page: data['current_page'],
              first_page_url: data['first_page_url'],
              next_page_url: data['next_page_url'],
              prev_page_url: data['prev_page_url'],
              total: data['total']);
          print(_pagingModel);
        } catch (e) {
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

  Future<void> fetchBookable(
      {required String token, required bool fetchMore}) async {
    try {
      final respo = await http.get(Uri.parse("$urlApi/activities?"), headers: {
        "Content-type": "application/json",
        "Authorization": "Bearer $token",
      });
      if (respo.statusCode == 200) {
        var data = json.decode(respo.body);
        try {
          List fetchBookable = data;
          _bookable =
              fetchBookable.map((e) => ActivityModel.fromJson(e)).toList();

          if (fetchMore) {
            debugPrint("FETCHING morel");

            _bookable.addAll(
                fetchBookable.map((e) => ActivityModel.fromJson(e)).toList());
          } else {
            _bookable =
                fetchBookable.map((e) => ActivityModel.fromJson(e)).toList();
          }

          // _pagingModel = PagingModel(
          //     current_page: data['current_page'],
          //     first_page_url: data['first_page_url'],
          //     next_page_url: data['next_page_url'],
          //     prev_page_url: data['prev_page_url'],
          //     total: data['total']);
          // print(_pagingModel);
          // print(_bookable);

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

          //cours
          //initiation
          //entrainement
          //stage

          // for (CourseModel x in _courses) {
          //   if (x.type!.name == "stage" || x.type!.name == "initiation") {
          //     if (x.description != null) {
          //       x = x.copyWith(description: removeHtmlTags(x.description!));
          //     }

          //     DateTime parseDt = DateTime.parse(x.date_from!);

          //     if (!DateTime.now()
          //         .subtract(const Duration(days: 1))
          //         .isAfter(parseDt)) {
          //       _bookable.add(ActivityModel(
          //           admin: x.admin,
          //           type: x.type,
          //           id: x.id,
          //           image: "assets/images/course.jpg",
          //           name: x.name,
          //           start_time: x.start_time,
          //           end_time: x.end_time,
          //           date_from: x.date_from,
          //           date_to: x.date_to,
          //           price: x.price,
          //           status: x.status,
          //           description: x.description));
          //     }
          //   }
          // }

          // _bookable.add(ActivityModel(
          //     image: "assets/images/alv.jpg",
          //     name: alveoles,
          //     description:
          //         "Pour vous et vos amis afin de pratiquer le tir 25m ou du Fun Shoot en dehors des heures d'ouverture"));
        } catch (e) {
          print(e);
          print("add FAIL");
        }
      } else {
        print("SERVER FAIL fetchBookable");
      }
    } catch (e) {
      print(e);
      print("FETCH BOOKIGNS FAIL");
    }
  }

  Future<void> fetchCourses({required String token}) async {
    try {
      final respo =
          await http.get(Uri.parse("$urlApi/active/courses"), headers: {
        "Authorization": "Bearer $token",
      });
      print("FETCH COURSES");
      if (respo.statusCode == 200) {
        var data = json.decode(respo.body);
        try {
          List fetchCouresList = data;

          _courses =
              fetchCouresList.map((e) => CourseModel.fromJson(e)).toList();

          for (CourseModel x in _courses) {
            DateTime parseDt = DateTime.parse(x.date_from!);

            if (!DateTime.now()
                .subtract(const Duration(days: 1))
                .isAfter(parseDt)) {
              _bookableCourse.add(ActivityModel(
                  admin: x.admin,
                  type: x.type,
                  id: x.id,
                  image: "assets/images/course.jpg",
                  name: x.name,
                  start_time: x.start_time,
                  end_time: x.end_time,
                  date_from: x.date_from,
                  date_to: x.date_to,
                  price: x.price,
                  status: x.status,
                  description: x.description,
                  active_booking_count: x.active_booking_count,
                  max_persons: x.max_persons));
            }
          }
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

  Future<int> isBookingExist(
      {required String token, required int courseId}) async {
    try {
      final respo =
          await http.post(Uri.parse("$urlApi/courses/bookings"), headers: {
        "Authorization": "Bearer $token",
      }, body: {
        "course": "true",
        "id": courseId.toString()
      });
      if (respo.statusCode == 200) {
        var data = json.decode(respo.body);

        debugPrint("data $data");
        try {
          return 1;
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
      print("FETCH EXISTBOOK FAIL");
    }
    return 0;
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

  Future<String> book({
    required String token,
    required DateTime date,
    required String time,
    required int activityId,
    required List<GunModel> guns,
    required List<AmmunitionsModel> ammunitions,
    required List<EquipmentModel> equipments,
  }) async {
    debugPrint("book api");
    try {
      final List<Map<String, dynamic>> gunss =
          guns.map((e) => e.toJson()).toList();
      final Map body = {
        "date": "${date.year}-${date.month}-${date.day}",
        "time": time.split("-")[0],
        "activity_id": activityId.toString(),
        "guns": gunss,
        "ammunitions": ammunitions.map((e) => e.toJson()).toList(),
        "equipments": equipments.map((e) => e.toJson()).toList(),
      };
      print("DATE : ${body['date']}");
      print("GUNS : ${body['guns']}");
      print("AMMO : ${body['ammunitions']}");
      print("EQ : ${body['equipments']}");
      print("TIME : ${body['time']}");
      print("ACT : ${body['activity_id']}");

      final respo = await http.post(
        Uri.parse("$urlApi/book/cell"),
        headers: {
          HttpHeaders.authorizationHeader: "Bearer $token",
          "Content-type": "application/json",
        },
        body: json.encode(body),
      );

      if (respo.statusCode == 200) {
        return "";
      } else {
        print(respo.body);
        print("CONVERSION JSON EROR IN BOOK");
        return "";
      }
    } catch (e) {
      return e.toString();
    }
  }

  Future<String> bookCourse({
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
            equipments: equipments,
          ).toJson()));

      var data = json.decode(respo.body);
      if (respo.statusCode == 200) {
        print("book pass");
        return data["message"];
      } else {
        print(respo.body);
        print("SERVER FAIL bookCourses");
        return "";
      }
    } catch (e) {
      print(e);
      print("FETCH BOOKIGNS FAIL");
      return e.toString();
    }
  }
}
