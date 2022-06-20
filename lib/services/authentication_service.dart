import 'package:firebase_auth/firebase_auth.dart';
import 'package:stacked_services/stacked_services.dart';

import '../app/app.locator.dart';

class AuthenticationService {
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  final DialogService _dialogService = locator<DialogService>();

  Stream<User?> get authStateChanges => firebaseAuth.authStateChanges();

  Future<String> get token async =>
      await firebaseAuth.currentUser!.getIdToken();

  Future<bool>? signIn(
      {required String email, required String password}) async {
    try {
      UserCredential user = await firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);

      return true;
    } on FirebaseAuthException catch (e) {
      print(e);

      return false;
    }
  }

  Future<bool>? signUp(
      {required String email, required String password}) async {
    try {
      await firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: password);
      return true;
    } on FirebaseAuthException catch (e) {
      print(e);

      return false;
    }
  }

  Future<bool>? logout() async {
    await firebaseAuth.signOut();

    return false;
  }
}
