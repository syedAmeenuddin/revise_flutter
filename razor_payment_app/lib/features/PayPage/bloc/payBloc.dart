import 'package:razor_payment_app/importss.dart';

class PayBloc extends Bloc<PayEvent, PayState> {
  PayBloc() : super(PayState()) {
    on<PayEvent>((event, emit) {
      print('pay');
      print(event.amt);
      payy(event.amt);
    });
  }
}
