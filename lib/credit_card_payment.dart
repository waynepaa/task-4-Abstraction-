// credit_card_payment.dart
import 'payment_method.dart';

class CreditCardPayment implements PaymentMethod {
  @override
  void pay(double amount) {
    print("Paid $amount using Credit Card.");
  }
}