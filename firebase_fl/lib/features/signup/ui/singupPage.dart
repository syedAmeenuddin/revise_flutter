import 'package:firebase_fl/features/feathersImport.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final _bloc = SignBloc();
  final TextEditingController email = TextEditingController();
  final TextEditingController passcode = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final displayWidth = MediaQuery.of(context).size.width;
    return BlocBuilder<SignBloc, SignState>(
      bloc: _bloc,
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
                  onpress: () async {
                    _bloc.add(createSignEmailEvent(
                        context: context,
                        email: email.text,
                        passcode: passcode.text));
                  },
                  text: 'Email SignUp',
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
