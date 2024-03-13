import 'dart:convert';
import 'package:egczacademy/app/env_helper.dart';
import 'dart:io';

import '../models/user_model.dart';

final String urlServer = EnvHelper.url;
final String urlApi = "$urlServer/api";
String? accesstoken;
String? fcmToken;
UserModel? loggedUser;

const String imageOwner = "assets/images/owner.png";
const String imageSmallLogo = "assets/images/logo1.png";
const String imagelBigLogo = "assets/images/logo2.png";

//ICONS
const String fbLogo = "assets/images/fb.png";
const String appleLogo = "assets/images/apple-logo.png";
const String instaLogo = "assets/images/insta.png";
const String secureIcon = "assets/images/secure-payment.png";
const String bigTriangle = "assets/images/triangleRight.png";
const String smallTriangle = "assets/images/smallTriangle.png";
const String profileImage = "assets/images/noImage.png";

//PAGING
const int gunsPerPage = 10;
const int ammunitionsPerPage = 10;

String convertToBase64(File file) {
  final bytes = File(file.path).readAsBytesSync();
  String extension = File(file.path).path.split('/').last.split('.').last;
  String img64 = "data:image/$extension;base64,${base64Encode(bytes)}";
  return img64;
}

String courseTSV = "Cours tsv";
String funShoot = "";
String alveoles = "Alvéoles";
String reservation = "";

String removeHtmlTags(String? text) => text == null
    ? ""
    : text
        .replaceAll("<p>", "")
        .replaceAll("</p>", " ")
        .replaceAll("<strong>", " ")
        .replaceAll("</strong>", " ")
        .replaceAll("<span>", " ")
        .replaceAll("</span>", " ")
        .replaceAll("<u>", " ")
        .replaceAll("</u>", " ");

String dateFormat(DateTime date) {
  // final DateFormat formatter = DateFormat('MMMM');

  final String formatted =
      "${date.day}/${date.month.toString().length == 1 ? "0${date.month.toString()}" : date.month.toString()}/${date.year}";
  return formatted;
}


// DATA IN MODEL: {id: 4438, name: Pré Match amical - Vendredi Après-Midi - Squad 98, description: <p>Match amical de l'EG-CZ Academy</p><p>Pré match - 
// Vendredi 07 juillet 2023 <strong><u>APRES-MIDI</u></strong></p><p><strong>Squad 98</strong></p><p>10 places maxi</p><p><span style="color: rgba(255, 255, 255, 0.698);
// ">Les divisions &amp; catégories seront validées durant la registration qui se fera 1H avant le début des tirs.</span></p>, 
// start: 2023-07-07 13:30:00.000, end: 2023-07-07 17:30:00.000, status: 1}