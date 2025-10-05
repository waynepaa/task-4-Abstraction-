abstract class PaymentMethod {
  void pay(double amount);
  void refund(double amount);
  void checkBalance();
  String get name;   // Each payment method has a name
}

class PaymentProcessor {
  final PaymentMethod method;

  PaymentProcessor(this.method);

  void process(double amount) {
    print("Processing payment via ${method.name}...");
    method.pay(amount);
  }

  void processRefund(double amount) {
    print("Processing refund via ${method.name}...");
    method.refund(amount);
  }

  void showBalance() {
    print("Checking balance for ${method.name}...");
    method.checkBalance();
  }
}
