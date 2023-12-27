import 'package:firebase_fl/features/feathersImport.dart';

class SignBloc extends Bloc<SignEvent, SignState> {
  SignBloc() : super(SignState(user: null)) {
    on<createSignEmailEvent>(((event, emit) async {
      final _auth = firebaseAuthemail();
      User? user = await _auth.EmailSignup(event.email, event.passcode);
      if (user?.email != null) {
        print('------------user');
        emit(SignState(user: user as User));
        print('done');
        Navigator.push(event.context, MaterialPageRoute(builder: (context) {
          return Home();
        }));
      } else {
        ScaffoldMessenger.of(event.context).showSnackBar(SnackBar(
          content: Text('Creating user failed !'),
        ));
      }
    }));
  }
}
