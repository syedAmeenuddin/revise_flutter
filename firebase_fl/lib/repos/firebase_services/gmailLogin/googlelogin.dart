import 'package:firebase_fl/features/feathersImport.dart';

class firebaseAuthgooogle {
  Future signInWithGoogle() async {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;
      final credentail = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );
      FirebaseAuth _auth = FirebaseAuth.instance;
      UserCredential sign_auth = await _auth.signInWithCredential(credentail);
      return sign_auth;
    // GoogleAuthProvider _google = GoogleAuthProvider();
    // FirebaseAuth _auth = await FirebaseAuth.instance;
    // UserCredential sign_auth = await _auth.signInWithProvider(_google);
    // return sign_auth;
  }
}
