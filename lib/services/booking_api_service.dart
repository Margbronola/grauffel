import 'dart:convert';

import 'package:egczacademy/models/bookable_model.dart';
import 'package:egczacademy/models/booking_model.dart';
import 'package:egczacademy/models/time_model.dart';
import 'package:http/http.dart' as http;
import '../app/global.dart';
import '../models/paging_model.dart';

class BookingAPIService {
  List<BookingModel>? _bookings;
  List<BookingModel>? get bookings => _bookings;
  List<BookableModel> _bookable = [];
  List<BookableModel>? get bookable => _bookable;
  List<TimeModel>? _availableTime;
  List<TimeModel>? get availableTime => _availableTime;
  PagingModel? _pagingModel;
  final int _perPage = 10;

  Future<void> fetchBookableTest() async {
    _bookable = [
      const BookableModel(
        image: "assets/images/precision.jpg",
        name: "Tir Précision",
        description:
            "Réservez un PAS DE TIR pour pratiquer du tir statique sur cible fixe",
      ),
      const BookableModel(
          image: "assets/images/funshoot.jpg",
          name: "Fun shoot",
          description:
              "Réservez un PAS DE TIR pour pratiquer du tir statique sur cible fixe"),
      const BookableModel(
          image: "assets/images/course.jpg",
          name: "Cours tsv",
          description:
              "Le TSV est une pratique dynamique du tir sportif Réservés aux abonnés Gold TSV & Black"),
      const BookableModel(
          image: "assets/images/alv.jpg",
          name: "Alvéoles",
          description:
              "Pour vous et vos amis afin de pratiquer le tir 25m ou du Fun Shoot en dehors des heures d'ouverture")
    ];
  }

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
          print("FETCH ACTIVITIES");
          List fetchBookable = data;
          for (var x in fetchBookable) {
            print(x);
          }

          _bookable =
              fetchBookable.map((e) => BookableModel.fromJson(e)).toList();

          List<BookableModel> copy =
              fetchBookable.map((e) => BookableModel.fromJson(e)).toList();
          await fetchBookableTest();
          if (copy
              .where((element) => element.name!.toLowerCase() == "fun shoot")
              .toList()
              .isNotEmpty) {
            print("found one");

            _bookable[1] = copy
                .firstWhere(
                    (element) => element.name!.toLowerCase() == "fun shoot")
                .copyWith(
                  name: "funshoot",
                  image: "assets/images/funshoot.jpg",
                );
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

          print(_bookable);
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
      final respo = await http.post(Uri.parse("$urlApi/bookings"),
          headers: {
            "Accept": "application/json",
            "Authorization": "Bearer $token",
          },
          body: booking.toJson());
      if (respo.statusCode == 200) {
        var data = json.decode(respo.body);
        try {
          print(data);
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
}
