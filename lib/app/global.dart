import 'dart:convert';
import 'dart:io';

const String urlApi = "$urlServer/api";
const String urlServer = " https://back.eg-czacademy.com";

const String imageOwner = "assets/images/owner.png";
const String imageSmallLogo = "assets/images/logo1.png";
const String imagelBigLogo = "assets/images/logo2.png";

//ICONS
const String fbLogo = "assets/images/fb.png";
const String instaLogo = "assets/images/insta.png";
const String secureIcon = "assets/images/secure-payment.png";
const String bigTriangle = "assets/images/triangleRight.png";
const String smallTriangle = "assets/images/smallTriangle.png";
const String profileImage = "assets/images/profile.png";

//PAGING
const int gunsPerPage = 10;
const int ammunitionsPerPage = 10;

String convertToBase64(File file) {
  final bytes = File(file.path).readAsBytesSync();
  String extension = File(file.path).path.split('/').last.split('.').last;
  String img64 = "data:image/$extension;base64,${base64Encode(bytes)}";
  return img64;
}
