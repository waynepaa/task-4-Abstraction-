import 'payment_method.dart';
import 'credit_card_payment.dart';
import 'paypal_payment.dart';
import 'bank_transfer_payment.dart';

void main() {
  var processor1 = PaymentProcessor(CreditCardPayment());
  processor1.process(100.0);

  var processor2 = PaymentProcessor(PayPalPayment());
  processor2.process(50.0);

  var processor3 = PaymentProcessor(BankTransferPayment());
  processor3.process(200.0);
}