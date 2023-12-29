import 'package:firebase_fl/features/feathersImport.dart';
import 'package:firebase_fl/repos/Models/dataModels.dart';

class GoogleState {
  User? user;

  GoogleState({required this.user});
}

class EmailState {
  User? user;

  EmailState({required this.user});
}

// class PhoneState {
//   final User? user;

//   PhoneState({required this.user});
// }

class PhoneState {
  String phonenumber;

  PhoneState({required this.phonenumber});
}
