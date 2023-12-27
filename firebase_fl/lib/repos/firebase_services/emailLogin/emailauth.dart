import 'package:firebase_fl/features/feathersImport.dart';

class firebaseAuthemail {
  Future EmailSignup(String email, String password) async {
    try {
      FirebaseAuth _auth = await FirebaseAuth.instance;
      UserCredential credential = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return credential.user as User;
    } catch (e) {
      return null;
    }
  }

  Future EmailLogin(String email, String password) async {
    try {
      FirebaseAuth _auth = await FirebaseAuth.instance;
      UserCredential credential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      print(credential.user);
      return credential.user as User;
    } catch (e) {
      return null;
    }
  }
}
