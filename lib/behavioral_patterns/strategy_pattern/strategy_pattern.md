# strategy_pattern
Strategy is a behavioral design pattern that lets you define a family of algorithms, put each of them into a separate class, and make their objects interchangeable.

# Attached Example:
The strategy_pattern.dart file attached is an example of it.

💡 If one day you decide to add an online payment process in your application, for example, using a deposit/credit card payment method, and after a period of time you are asked to add another payment method, for example, using PayPal or others.

Would you change the writing of your code payment function every time you ask to add a new payment process ⁉️ 

❌ Of course no

✔️ But we will use the strategy pattern to separate these methods into concrete classes

# Structure
![Alt text](structure.png)

1- ShoppingCart Class (Define a context class that uses the strategy).
2- PaymentStrategy abstract Class (Define a strategy interface) that has a pay method will be implemented by Concrete classes.
3- CreditCardStrategy is a concrete class that implements PaymentStrategy, and therefore, @override pay method in his own way and also PayPallStrategy.

😎 To add more than one payment process to your application, you need to add NewPaymentProcessStrategy class.

# Pros
- You can replace inheritance with composition.
- Open/Closed Principle. You can introduce new strategies without having to change the context
- You can isolate the implementation details of an algorithm from the code that uses it.
- You can swap algorithms used inside an object at runtime.
