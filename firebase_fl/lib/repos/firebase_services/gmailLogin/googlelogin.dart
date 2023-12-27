import 'package:firebase_fl/features/feathersImport.dart';

class firebaseAuthgooogle {
  Future signInWithGoogle() async {
    GoogleAuthProvider _google = GoogleAuthProvider();
    FirebaseAuth _auth = await FirebaseAuth.instance;
    final sign_auth = _auth.signInWithProvider(_google);
    return sign_auth;
  }
}
