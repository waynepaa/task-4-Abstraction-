import 'payment_method.dart';

class BankTransferPayment implements PaymentMethod {
  @override
  void pay(double amount) {
    print("Paid $amount using Bank Transfer.");
  }
}