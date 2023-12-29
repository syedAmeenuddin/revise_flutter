import 'package:firebase_fl/features/feathersImport.dart';

class firebaseAuthgooogle {
  Future signInWithGoogle() async {
    GoogleAuthProvider _google = GoogleAuthProvider();
    FirebaseAuth _auth = await FirebaseAuth.instance;
    UserCredential sign_auth = await _auth.signInWithProvider(_google);
    return sign_auth;
  }
}
