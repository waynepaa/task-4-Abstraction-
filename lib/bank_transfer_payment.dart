import 'payment_method.dart';

class BankTransferPayment implements PaymentMethod {
  String _name = "Bank Transfer";
  double _balance = 2000.0;

  @override
  String get name => _name;

  @override
  void pay(double amount) {
    if (_balance >= amount) {
      _balance -= amount;
      print("Paid $amount using $_name.");
    } else {
      print("Insufficient funds in $_name.");
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
