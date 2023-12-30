import 'package:razor_payment_app/importss.dart';

class PayPage extends StatefulWidget {
  const PayPage({super.key});

  @override
  State<PayPage> createState() => _PayPageState();
}

class _PayPageState extends State<PayPage> {
  TextEditingController amt = TextEditingController();

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        TextField(
          controller: amt,
        ),
        
      ]),
    );
  }
}
