import 'package:firebase_fl/features/feathersImport.dart';

class firebaseAuthphone {
  FirebaseAuth _auth = FirebaseAuth.instance;
  Future phnlogin(String ph, BuildContext context) async {
    await _auth.verifyPhoneNumber(
      verificationCompleted: (PhoneAuthCredential credential) async {
        final response = await _auth.signInWithCredential(credential);
        print('---verified');
        print(response);
      },
      verificationFailed: (FirebaseAuthException ex) {
        print('---Error----');
        print(ex.toString());
        print('x--Error---x');
      },
      codeSent: (String id, int? resendtoken) {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return verifyotp(id: id);
        }));
      },
      codeAutoRetrievalTimeout: (String id) {},
      phoneNumber: ph,
    );
  }

  Future authverifyotp(String id, String code) async {
    PhoneAuthCredential user =
        PhoneAuthProvider.credential(smsCode: code, verificationId: id);
    return await _auth.signInWithCredential(user);
  }
}
