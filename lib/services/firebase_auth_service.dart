import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';

class FireBaseAuthService {
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  Stream<User?> get authStateChanges => firebaseAuth.authStateChanges();

  Future<String?> signIn(
      {required String email, required String password}) async {
    try {
      UserCredential user = await firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
      print("FIREBASE TOKEN : ${await user.user!.getIdToken()}");
      return await user.user!.getIdToken();
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        Fluttertoast.showToast(msg: "Aucun utilisateur trouvé");
      } else if (e.code == 'wrong-password') {
        Fluttertoast.showToast(msg: "Mot de passe incorrect");
      } else if (e.code == "account-exists-with-different-credential") {
        Fluttertoast.showToast(
          msg: "Compte déjà utilisé, essayez une autre adresse e-mail",
        );
      } else {
        Fluttertoast.showToast(msg: e.code);
      }
      return null;
    }
  }

  // Future<bool>? signUp(
  //     {required String email, required String password}) async {
  //   try {
  //     await firebaseAuth.createUserWithEmailAndPassword(
  //         email: email, password: password);
  //     return true;
  //   } on FirebaseAuthException catch (e) {
  //     print(e);
  //     return false;
  //   }
  // }

  Future<bool>? logout() async {
    await firebaseAuth.signOut();
    return false;
  }
}
