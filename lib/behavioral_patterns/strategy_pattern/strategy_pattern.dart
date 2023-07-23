// ignore_for_file: avoid_print

// Define a strategy interface
abstract class PaymentStrategy {
  void pay(double amount);
}

// Define concrete strategy classes
class CreditCardStrategy implements PaymentStrategy {
  String name;
  String cardNumber;
  String cvv;
  String dateOfExpiry;

  CreditCardStrategy(
      {required this.name,
      required this.cardNumber,
      required this.cvv,
      required this.dateOfExpiry});

  @override
  void pay(double amount) {
    print('$amount paid with credit/debit Card.');
  }
}

class PayPallStrategy implements PaymentStrategy {
  String email;
  String password;

  PayPallStrategy({required this.email, required this.password});

  @override
  void pay(double amount) {
    print('$amount paid using PayPal.');
  }
}

//context class
class ShoppingCart {
  List<double> items = [];

  void addItem(double item) {
    items.add(item);
  }

  double calculateTotal() {
    return items.reduce((a, b) => a + b);
  }

  void pay(PaymentStrategy paymentStrategy) {
    double totalAmount = calculateTotal();
    paymentStrategy.pay(totalAmount);
  }
}

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
