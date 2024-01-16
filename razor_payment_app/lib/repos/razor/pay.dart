import 'package:razor_payment_app/importss.dart';

void payy(int amt) {
  Razorpay razorpay = Razorpay();
  int amount = amt * 100;
  var options = {
    'amount': amount,
    'key': 'rzp_test_HXAhfsdh54TFvI',
    'name': 'SyedTestSyed',
    'prefill': {'contact': '+911234567890', 'email': 'Syedtest@gmail.com'},
    'external': {
      'wallets': ['paytm']
    }
  };
  try {
    razorpay.open(options);
  } catch (e) {
    print(e.toString());
  }
}
