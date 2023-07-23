import 'package:design_patterns/behavioral_patterns/strategy_pattern/strategy_pattern.dart';

void main() {
  ShoppingCart shoppingCart = ShoppingCart();
  shoppingCart.addItem(100);
  shoppingCart.addItem(400);
  shoppingCart.addItem(500);

// If User have a credit or depit Card
  CreditCardStrategy cardStrategy = CreditCardStrategy(
      name: 'Abdelrahman',
      cardNumber: '00000000000',
      cvv: 'xxx',
      dateOfExpiry: '12/03');
  shoppingCart.pay(cardStrategy);

// If User have a paypall Account
  PayPallStrategy payPallStrategy = PayPallStrategy(
      email: 'abdellrahmanalaa@gmail.com', password: 'xxxxxxxxxx');
  shoppingCart.pay(payPallStrategy);
}
