import 'package:firebase_fl/features/feathersImport.dart';

class GoogleEvent {}

class loginGoogle extends GoogleEvent {}

class EmailEvent {}

class loginEmail extends EmailEvent {
  final String email;
  final String passcode;
  final BuildContext context;

  loginEmail(
      {required this.email, required this.passcode, required this.context});
}

class PhoneEvent {}

class test extends PhoneEvent {
  final String updatenumber;

  test({required this.updatenumber});
}

class getphnoptEvent extends PhoneEvent {
  final String number;
  final BuildContext context;

  getphnoptEvent({required this.number, required this.context});
}

class verifyphnotpEvent extends PhoneEvent {
  final String otp;
  final String id;

  final BuildContext context;
  verifyphnotpEvent(
      {required this.otp, required this.id, required this.context});
}
