import 'package:firebase_fl/features/feathersImport.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  localnotification.init();
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
  FirebaseMessaging messaging = FirebaseMessaging.instance;

  void initState() {
    super.initState();

    messaging.getToken().then((value) {
      print(value);
    });

    FirebaseMessaging.onMessage.listen((RemoteMessage event) {
      if (event.notification != null) {
        localnotification.shownotification(
            body: event.notification!.body.toString(),
            payload: 'test',
            title: event.notification!.title.toString());
      }
    });
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
              kButton(
                onpress: () {
                  localnotification.shownotification(
                      body: 'test', payload: 'test', title: 'test');
                  // localnotification.recievednotification();
                },
                text: 'Notii',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
