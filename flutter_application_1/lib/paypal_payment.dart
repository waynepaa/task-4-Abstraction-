import 'payment_method.dart';

class PayPalPayment implements PaymentMethod {
  @override
  void pay(double amount) {
    print("Paid $amount using PayPal.");
    // Add PayPal-specific payment processing logic here
  }
}