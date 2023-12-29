import 'package:firebase_fl/features/feathersImport.dart';
import 'package:firebase_fl/repos/Models/dataModels.dart';

class GoogleBloc extends Bloc<GoogleEvent, GoogleState> {
  GoogleBloc() : super(GoogleState(user: null)) {
    on<loginGoogle>(((event, emit) async {
      print('---Google auth----');
      UserCredential _auth = await firebaseAuthgooogle().signInWithGoogle();
      print(_auth.user!.email);
      print(FirebaseAuth.instance.currentUser!.email);
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
      print(user);
      if (user == null) {
        ScaffoldMessenger.of(event.context).showSnackBar(
          SnackBar(content: Text('Please signin to login')),
        );
      } else if (user!.email != null) {
        emit(EmailState(user: user as User));
        Navigator.push(event.context, MaterialPageRoute(builder: (context) {
          return Home(
            code: 'E',
          );
        }));
      } else {
        ScaffoldMessenger.of(event.context).showSnackBar(
          SnackBar(content: Text('Please signin to login')),
        );
      }
      print('done');
    }));
  }
}

getauth() {
  return FirebaseAuth.instance.currentUser!.phoneNumber;
}

class PhoneBloc extends Bloc<PhoneEvent, PhoneState> {
  PhoneBloc() : super(PhoneState(phonenumber: getauth())) {
    on<test>(((event, emit) async {
      FirebaseAuth _auth = await FirebaseAuth.instance;
      print('--get data');
      emit(PhoneState(phonenumber: event.updatenumber));
    }));
    on<getphnoptEvent>(((event, emit) async {
      print(event.number);
      firebaseAuthphone().phnlogin('+91${event.number}', event.context);
      print('get opt');
    }));
    on<verifyphnotpEvent>(((event, emit) async {
      User? _user =
          await firebaseAuthphone().authverifyotp(event.id, event.otp);

      if (_user == null) {
        ScaffoldMessenger.of(event.context).showSnackBar(
          SnackBar(content: Text('Failed  enter valid OTP')),
        );
      } else if (_user != null) {
        // emit(PhoneState(user: _user as User));
        // print(state.user);
        Navigator.pushAndRemoveUntil(
          event.context,
          MaterialPageRoute(
            builder: (context) => Home(code: 'P'),
          ),
          (Route<dynamic> route) => false,
        );
      } else {
        ScaffoldMessenger.of(event.context).showSnackBar(
          SnackBar(content: Text('Failed  enter valid OTP')),
        );
      }
    }));
  }
}
