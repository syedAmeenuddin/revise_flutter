import 'package:firebase_fl/features/feathersImport.dart';
import 'package:firebase_fl/features/login/bloc/login_bloc.dart';

class Login extends StatelessWidget {
  Login({super.key, this.method});
  final method;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: method == "Email"
              ? emailmethod()
              : method == "Google"
                  ? googlelogin()
                  : phonemethod(),
        ),
      ),
    );
  }
}

class googlelogin extends StatefulWidget {
  const googlelogin({super.key});

  @override
  State<googlelogin> createState() => _googleloginState();
}

class _googleloginState extends State<googlelogin> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Google Login'),
          ElevatedButton(
              onPressed: () {
                firebaseAuthgooogle().signInWithGoogle();
              },
              child: Text('Login?'))
        ],
      ),
    );
  }
}

class emailmethod extends StatefulWidget {
  const emailmethod({super.key});

  @override
  State<emailmethod> createState() => _emailmethodState();
}

class _emailmethodState extends State<emailmethod> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController email = TextEditingController();
    final TextEditingController passcode = TextEditingController();
    final displayWidth = MediaQuery.of(context).size.width;
    final _authEmail = EmailBloc();
    return BlocConsumer<EmailBloc, EmailState>(
      listener: (context, state) {},
      bloc: _authEmail,
      builder: (context, state) {
        return Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    width: displayWidth * 0.8,
                    child: kTextFiled(
                      text: 'Email',
                      controller: email,
                    )),
                SizedBox(
                  height: 10,
                ),
                Container(
                    width: displayWidth * 0.8,
                    child: kTextFiled(
                      text: 'Password',
                      controller: passcode,
                    )),
                SizedBox(
                  height: 10,
                ),
                kButton(
                  onpress: () {
                    _authEmail.add(loginEmail(
                        email: email.text,
                        passcode: passcode.text,
                        context: context));
                  },
                  text: 'Email Login',
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class phonemethod extends StatefulWidget {
  const phonemethod({super.key});

  @override
  State<phonemethod> createState() => _phonemethodState();
}

class _phonemethodState extends State<phonemethod> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController phn = TextEditingController();
    final _phnBloc = PhoneBloc();
    final displayWidth = MediaQuery.of(context).size.width;
    return BlocConsumer<PhoneBloc, PhoneState>(
      listener: (context, state) {},
      bloc: _phnBloc,
      builder: (context, state) {
        return Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Phone Auth'),
              Container(
                  width: displayWidth * 0.8,
                  child: kTextFiled(
                    text: 'Phone Number',
                    controller: phn,
                  )),
              SizedBox(
                height: 10,
              ),
              kButton(
                onpress: () {
                  _phnBloc.add(getphnoptEvent(
                      number: phn.text.toString(), context: context));
                },
                text: 'Get OTP',
              ),
            ],
          ),
        );
      },
    );
  }
}

class verifyotp extends StatefulWidget {
  verifyotp({super.key, required this.id});
  final String id;

  @override
  State<verifyotp> createState() => _verifyotpState();
}

class _verifyotpState extends State<verifyotp> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController code = TextEditingController();
    final _phnBloc = PhoneBloc();
    final displayWidth = MediaQuery.of(context).size.width;
    return BlocConsumer<PhoneBloc, PhoneState>(
      listener: (context, state) {},
      bloc: _phnBloc,
      builder: (context, state) {
        return Scaffold(
          body: Center(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Phone Auth'),
                  Container(
                      width: displayWidth * 0.8,
                      child: kTextFiled(
                        text: 'OTP',
                        controller: code,
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  kButton(
                    onpress: () {
                      _phnBloc.add(verifyphnotpEvent(
                          context: context,
                          otp: code.text.toString(),
                          id: widget.id));
                    },
                    text: 'Validate Phn auth',
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
