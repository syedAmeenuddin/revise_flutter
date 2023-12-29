import 'package:firebase_fl/features/feathersImport.dart';

class Home extends StatefulWidget {
  Home({super.key, required this.code});
  final String code;

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  PhoneBloc _phnBloc = PhoneBloc();
  void initState() {
    // _phnBloc.add(getusersdata());
    print('----ininttt');

    // print(_phnBloc.state.user);
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          widget.code == 'P'
              ? BlocBuilder<PhoneBloc, PhoneState>(
                  bloc: _phnBloc,
                  builder: (context, state) {
                    return state.phonenumber != ''
                        ? Column(
                            children: [
                              Text(state.phonenumber),
                              ElevatedButton(
                                  onPressed: () {
                                    String newphone = '23456789';
                                    _phnBloc.add(test(updatenumber: newphone));
                                  },
                                  child: Text('+'))
                            ],
                          )
                        : CircularProgressIndicator();
                  },
                )
              : widget.code == 'E'
                  ? Text('')
                  : Text(''),
        ],
      )),
    );
  }
}
