import 'payment_method.dart';

class PayPalPayment implements PaymentMethod {
  String _name = "PayPal";
  double _balance = 500.0;

  @override
  String get name => _name;

  @override
  void pay(double amount) {
    if (_balance >= amount) {
      _balance -= amount;
      print("Paid $amount using $_name.");
    } else {
      print("Insufficient balance on $_name.");
    }
  }

  @override
  void refund(double amount) {
    _balance += amount;
    print("Refunded $amount to $_name.");
  }

  @override
  void checkBalance() {
    print("$_name balance: $_balance");
  }
}
