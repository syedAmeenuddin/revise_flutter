import 'package:firebase_fl/features/feathersImport.dart';

abstract class SignEvent {}

class createSignEmailEvent extends SignEvent {
  final String email;
  final String passcode;
  final BuildContext context;

  createSignEmailEvent(
      {required this.email, required this.passcode, required this.context});
}
