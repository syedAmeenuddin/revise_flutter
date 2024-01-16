import 'package:razor_payment_app/importss.dart';

class PayPage extends StatefulWidget {
  const PayPage({super.key});

  @override
  State<PayPage> createState() => _PayPageState();
}

class _PayPageState extends State<PayPage> {
  TextEditingController amt = TextEditingController();
  PayBloc _pBloc = PayBloc();
  Widget build(BuildContext context) {
    return BlocConsumer<PayBloc, PayState>(
      listener: (context, state) {},
      bloc: _pBloc,
      builder: (context, state) {
        return Scaffold(
          body: SafeArea(
            child: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextField(
                      controller: amt,
                      decoration: InputDecoration(hintText: 'Enter Amt'),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          _pBloc.add(PayEvent(
                              amt: int.parse(amt.text), context: context));
                        },
                        child: Text('Pay')),
                  ]),
            ),
          ),
        );
      },
    );
  }
}
