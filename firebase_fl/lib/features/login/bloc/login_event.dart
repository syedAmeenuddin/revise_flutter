import 'package:firebase_fl/features/feathersImport.dart';

class GoogleEvent {}

class loginGoogle extends GoogleEvent {}

class EmailEvent {}

class loginEmail extends EmailEvent {
  final String email;
  final String passcode;
  loginEmail({required this.email, required this.passcode});
}

class PhoneEvent {}

class getphnoptEvent extends PhoneEvent {
  final String number;
  final BuildContext context;

  getphnoptEvent({required this.number, required this.context});
}

class verifyphnotpEvent extends PhoneEvent {
  final String otp;
  final String id;

  verifyphnotpEvent({required this.otp, required this.id});
}
