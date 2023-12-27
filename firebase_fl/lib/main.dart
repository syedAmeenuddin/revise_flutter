import 'package:firebase_fl/features/feathersImport.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  // await FirebaseAuth.instance.useAuthEmulator('localhost', 9099);
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Welcome to firebase auth\'s '),
              SizedBox(
                height: 10,
              ),
              kButton(
                onpress: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Login(
                      method: "Email",
                    );
                  }));
                },
                text: 'Email  Login',
              ),
              sizeh(
                h: 10,
              ),
              kButton(
                onpress: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Signup();
                  }));
                },
                text: 'Email  SignUp',
              ),
              sizeh(
                h: 10,
              ),
              kButton(
                onpress: () {
                  // Google
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Login(
                      method: "Google",
                    );
                  }));
                },
                text: 'Google Login',
              ),
              sizeh(
                h: 10,
              ),
              kButton(
                onpress: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Login(
                      method: "Phone",
                    );
                  }));
                },
                text: 'Phone Login',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
