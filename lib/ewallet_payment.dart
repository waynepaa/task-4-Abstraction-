import 'payment_method.dart';

class EwalletPayment implements PaymentMethod {
  @override
  void pay(double amount) {
    print("Paid $amount using E-wallet.");
  }
}