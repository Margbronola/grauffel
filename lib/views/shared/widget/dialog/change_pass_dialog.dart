// import 'package:egczacademy/services/user_api_service.dart';
// import 'package:egczacademy/services/user_service.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:stacked_services/stacked_services.dart';
// import '../../../../app/app.locator.dart';
// import '../../color.dart';
// import '../../custom_button.dart';
// import '../../ui_helper.dart';
// import '../../validator.dart';

// class ChangePassDialog extends StatefulWidget {
//   final DialogRequest? request;
//   final Function(DialogResponse)? completer;
//   const ChangePassDialog({Key? key, this.request, this.completer})
//       : super(key: key);

//   @override
//   State<ChangePassDialog> createState() => _ChangePassDialogState();
// }

// class _ChangePassDialogState extends State<ChangePassDialog> {
//   final UserAPIService _userAPIService = locator<UserAPIService>();
//   final UserService _userService = locator<UserService>();
//   FocusNode passwordFocusNode = FocusNode();
//   FocusNode newPassFocusNode = FocusNode();
//   FocusNode cPassFocusNode = FocusNode();
//   TextEditingController passwordController = TextEditingController();
//   TextEditingController newPassController = TextEditingController();
//   TextEditingController cPassController = TextEditingController();
//   GlobalKey<FormState> formKey = GlobalKey<FormState>();
//   bool showPassword = false;
//   bool showNewPassword = false;
//   bool showCPassword = false;
//   double additionalHeight1 = 0;
//   double additionalHeight2 = 0;
//   double additionalHeight3 = 0;
//   void toggle(int index) {
//     switch (index) {
//       case 0:
//         setState(() {
//           showPassword = !showPassword;
//         });
//         break;
//       case 1:
//         setState(() {
//           showNewPassword = !showNewPassword;
//         });
//         break;
//       case 2:
//         setState(() {
//           showCPassword = !showCPassword;
//         });
//         break;
//       default:
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Dialog(
//         child: Stack(
//       children: [
//         AnimatedContainer(
//           decoration: BoxDecoration(
//               color: kcWhite, borderRadius: BorderRadius.circular(10)),
//           padding: const EdgeInsets.symmetric(horizontal: 20),
//           height: size(context).height / 2,
//           width: size(context).width,
//           duration: const Duration(milliseconds: 300),
//           child: Form(
//             key: formKey,
//             child: Column(children: [
//               verticalSpaceSmall(),
//               Text(
//                 "changer le mot de passe".toUpperCase(),
//                 style: TextStyle(
//                     color: backgroundColor,
//                     fontSize: 20.sp,
//                     fontFamily: 'ProductSans',
//                     letterSpacing: 1.3,
//                     fontWeight: FontWeight.bold),
//               ),
//               verticalSpaceMedium(),
//               TextFormField(
//                 onFieldSubmitted: (String text) {},
//                 focusNode: passwordFocusNode,
//                 style: TextStyle(
//                   fontSize: 15.sp,
//                   fontFamily: 'ProductSans',
//                   letterSpacing: 1.3,
//                 ),
//                 obscureText: !showPassword,
//                 controller: passwordController,
//                 validator: (value) {
//                   String? x = Validator.validatePassword(value ?? "");
//                   if (x != null) {
//                     if (additionalHeight1 == 0) {
//                       setState(() {
//                         additionalHeight1 += 30;
//                       });
//                     }
//                   } else {
//                     if (additionalHeight1 == 30) {
//                       setState(() {
//                         additionalHeight1 -= 30;
//                       });
//                     }
//                   }
//                   return x;
//                 },
//                 decoration: InputDecoration(
//                   focusedBorder: const UnderlineInputBorder(
//                     borderSide: BorderSide(color: buttonColor),
//                   ),
//                   enabledBorder: const UnderlineInputBorder(
//                     borderSide: BorderSide(color: backgroundColor),
//                   ),
//                   hintStyle: const TextStyle(color: backgroundColor),
//                   suffixIcon: GestureDetector(
//                     onTap: () {
//                       toggle(0);
//                     },
//                     child: Icon(
//                       showPassword ? Icons.visibility : Icons.visibility_off,
//                       color: Colors.grey,
//                     ),
//                   ),
//                   hintText: "Mot de passe*",
//                   isDense: true,
//                 ),
//               ),
//               TextFormField(
//                 onFieldSubmitted: (String text) {},
//                 focusNode: newPassFocusNode,
//                 style: TextStyle(
//                   fontFamily: 'ProductSans',
//                   letterSpacing: 1.3,
//                   fontSize: 15.sp,
//                 ),
//                 obscureText: !showNewPassword,
//                 controller: newPassController,
//                 validator: (value) {
//                   String? x = Validator.validatePassword(value ?? "");
//                   if (x != null) {
//                     if (additionalHeight2 == 0) {
//                       setState(() {
//                         additionalHeight2 += 30;
//                       });
//                     }
//                   } else {
//                     if (additionalHeight2 == 30) {
//                       setState(() {
//                         additionalHeight2 -= 30;
//                       });
//                     }
//                   }
//                   return x;
//                 },
//                 decoration: InputDecoration(
//                   focusedBorder: const UnderlineInputBorder(
//                     borderSide: BorderSide(color: buttonColor),
//                   ),
//                   enabledBorder: const UnderlineInputBorder(
//                     borderSide: BorderSide(color: backgroundColor),
//                   ),
//                   hintStyle: const TextStyle(color: backgroundColor),
//                   suffixIcon: GestureDetector(
//                     onTap: () {
//                       toggle(1);
//                     },
//                     child: Icon(
//                       showPassword ? Icons.visibility : Icons.visibility_off,
//                       color: Colors.grey,
//                     ),
//                   ),
//                   hintText: "Nouveau mot de passe",
//                   isDense: true,
//                 ),
//               ),
//               TextFormField(
//                 onFieldSubmitted: (String text) {},
//                 focusNode: cPassFocusNode,
//                 style: TextStyle(
//                   fontSize: 15.sp,
//                   fontFamily: 'ProductSans',
//                   letterSpacing: 1.3,
//                 ),
//                 obscureText: !showCPassword,
//                 controller: cPassController,
//                 validator: (value) {
//                   String? x = Validator.validatePassword(value ?? "");
//                   if (x != null) {
//                     if (additionalHeight3 == 0) {
//                       setState(() {
//                         additionalHeight3 += 30;
//                       });
//                     }
//                   } else {
//                     if (additionalHeight3 == 30) {
//                       setState(() {
//                         additionalHeight3 -= 30;
//                       });
//                     }
//                   }
//                   return x;
//                 },
//                 decoration: InputDecoration(
//                   focusedBorder: const UnderlineInputBorder(
//                     borderSide: BorderSide(color: buttonColor),
//                   ),
//                   enabledBorder: const UnderlineInputBorder(
//                     borderSide: BorderSide(color: backgroundColor),
//                   ),
//                   hintStyle: const TextStyle(color: backgroundColor),
//                   suffixIcon: GestureDetector(
//                     onTap: () {
//                       toggle(2);
//                     },
//                     child: Icon(
//                       showPassword ? Icons.visibility : Icons.visibility_off,
//                       color: Colors.grey,
//                     ),
//                   ),
//                   hintText: "Ancien mot de passe",
//                   isDense: true,
//                 ),
//               ),
//               const Spacer(),
//               CustomButton(
//                   title: "Mettre à jour",
//                   onTap: () async {
//                     if (formKey.currentState!.validate()) {
//                       await _userAPIService
//                           .updatePassword(
//                               oldPassword: passwordController.text,
//                               newPassword: newPassController.text,
//                               cPassword: cPassController.text,
//                               token: _userService.token!)
//                           .then((value) {
//                         if (value) {
//                           widget.completer!(DialogResponse(confirmed: true));
//                         } else {
//                           return AlertDialog(
//                             title: Text(
//                               'Save The Planet',
//                               style: Theme.of(context).textTheme.headline1,
//                             ),
//                             content: SingleChildScrollView(
//                               child: ListBody(
//                                 children: [
//                                   Text(
//                                     'Plant Tress and reduce Carbon Emission.',
//                                     style:
//                                         Theme.of(context).textTheme.bodyText2,
//                                   ),
//                                   Text(
//                                     'Would you like to approve of this message?',
//                                     style:
//                                         Theme.of(context).textTheme.bodyText1,
//                                   ),
//                                 ],
//                               ),
//                             ),
//                             actions: <Widget>[
//                               TextButton(
//                                 child: const Text('Approve'),
//                                 onPressed: () {
//                                   Navigator.of(context).pop();
//                                 },
//                               ),
//                             ],
//                           );
//                         }
//                       });
//                     }
//                   }),
//               verticalSpaceSmall()
//             ]),
//           ),
//         ),
//         Positioned(
//             top: 0,
//             right: 0,
//             child: IconButton(
//               onPressed: () {
//                 Navigator.pop(context);
//               },
//               icon: const Icon(
//                 Icons.close,
//                 color: Colors.grey,
//               ),
//             )),
//       ],
//     ));
//   }
// }
