import 'payment_method.dart';
import 'credit_card_payment.dart';

void main() {
  var processor1 = PaymentProcessor(CreditCardPayment());
  processor1.process(100.0);
}