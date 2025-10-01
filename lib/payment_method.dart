abstract class PaymentMethod {
  void pay(double amount);
}

class PaymentProcessor {
  final PaymentMethod method;

  PaymentProcessor(this.method);

  void process(double amount) {
    method.pay(amount);
  }
}