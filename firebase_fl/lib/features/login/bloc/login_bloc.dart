import 'package:firebase_fl/features/feathersImport.dart';

class GoogleBloc extends Bloc<GoogleEvent, GoogleState> {
  GoogleBloc() : super(GoogleState(user: null)) {
    on<loginGoogle>(((event, emit) async {
      print('---Google auth----');
      final _auth = await firebaseAuthgooogle().signInWithGoogle();
      print(_auth);
      print(FirebaseAuth.instance.currentUser);
      print('-xx-Google auth--xx-');
    }));
  }
}

class EmailBloc extends Bloc<EmailEvent, EmailState> {
  EmailBloc() : super(EmailState(user: null)) {
    on<loginEmail>(((event, emit) async {
      final _auth = firebaseAuthemail();
      User? user = await _auth.EmailLogin(event.email, event.passcode);
      print('------------user');
      emit(EmailState(user: user as User));
      print('done');
    }));
  }
}

class PhoneBloc extends Bloc<PhoneEvent, PhoneState> {
  PhoneBloc() : super(PhoneState(user: null)) {
    on<getphnoptEvent>(((event, emit) async {
      print(event.number);
      firebaseAuthphone().phnlogin('+91${event.number}', event.context);
      print('get opt');
    }));
    on<verifyphnotpEvent>(((event, emit) async {
      print(event.otp);
      print(event.id);
      final _user = firebaseAuthphone().authverifyotp(event.id, event.otp);
      print(_user);

      print('verify otp');
    }));
  }
}
