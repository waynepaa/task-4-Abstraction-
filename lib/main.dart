import 'payment_method.dart';
import 'credit_card_payment.dart';
import 'paypal_payment.dart';
import 'bank_transfer_payment.dart';
import 'ewallet_payment.dart';

void main() {
  var processor1 = PaymentProcessor(CreditCardPayment());
  processor1.process(100.0);
  processor1.processRefund(20.0);
  processor1.showBalance();

  print("");

  var processor2 = PaymentProcessor(PayPalPayment());
  processor2.process(50.0);
  processor2.processRefund(10.0);
  processor2.showBalance();

  print("");

  var processor3 = PaymentProcessor(BankTransferPayment());
  processor3.process(200.0);
  processor3.processRefund(50.0);
  processor3.showBalance();

  print("");

  var processor4 = PaymentProcessor(EWalletPayment());
  processor4.process(300.0);
  processor4.processRefund(100.0);
  processor4.showBalance();
}
