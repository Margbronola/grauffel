import 'package:egczacademy/views/shared/customButton.dart';
import 'package:egczacademy/views/shared/socialButton.dart';
import 'package:egczacademy/views/shared/ui_helper.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import '../shared/validator.dart';
import 'login_viewModel.dart';

class LoginView extends StatelessWidget {
 const LoginView({Key? key}) : super(key: key);

 @override
 Widget build(BuildContext context) {
   var size = MediaQuery.of(context).size;
   return ViewModelBuilder<LoginViewModel>.reactive(
     builder: (context, model, child) => Scaffold(
          body: Container(
            padding: EdgeInsets.all(20),
            child: Form(
              key: model.formKey,
              child: Stack(children: [
                SizedBox(
                  width: size.width,
                  height: size.height,
                  child: Align(
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Spacer(),
                        SingleChildScrollView(
                          child: Center(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                Image.asset("assets/images/logo2.png"),
                              SizedBox(height: size.height * 0.06),
                              TextFormField(
                                controller: model.emailController,
                                validator: (value) {
                                  return Validator.validateEmail(value ?? "");
                                },
                                decoration: InputDecoration(
                                  hintText: "Adresse mail*",
                                  isDense: true,
                                ),
                              ),
                              SizedBox(height: size.height * 0.03),
                              TextFormField(
                                obscureText: model.showPassword,
                                controller: model.passwordController,
                                validator: (value) {
                                  return Validator.validatePassword(value ?? "");
                                },
                                decoration: InputDecoration(
                                  suffixIcon: GestureDetector(
                                    onTap: model.toggle,
                                    child: Icon(
                                      model.showPassword
                                          ? Icons.visibility
                                          : Icons.visibility_off,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  hintText: "Mot de passe*",
                                  isDense: true,
                                ),
                              ),
                              SizedBox(height: size.height * 0.03),
                              

                              CustomButton(title: "SE CONNECTER", onTap: (){}),
                              ],),
                              

                              ],
                            ),
                          ),
                        ),
                        Spacer(),
                        SocialButton()
                      ],
                    ),
                  ),
                ),
              ]),
            ),
          )),
     viewModelBuilder: () => LoginViewModel(),
   );
 }
}