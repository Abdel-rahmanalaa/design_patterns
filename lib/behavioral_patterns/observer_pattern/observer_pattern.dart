// The Observable class maintains a list of observers
//and provides methods for adding and removing observers
class Observable {
  final List<Observer> _observers = [];

  void addObserver(Observer observer) {
    _observers.add(observer);
  }

  void removeObserver(Observer observer) {
    _observers.remove(observer);
  }

  void notifyObservers() {
    for (var observer in _observers) {
      observer.update();
    }
  }
}

// The Observer interface defines the update() method
//that will be called by the Observable
abstract class Observer {
  void update();
}

// A concrete Observer implementation
//that prints a message when notified
class MessageObserver implements Observer {
  @override
  void update() {
    print('New message received!');
  }
}

void main() {
  // Create an instance of the Observable and add an Observer to it
  final observable = Observable();
  final observer = MessageObserver();
  observable.addObserver(observer);
  observable.addObserver(observer);

  // Notify the Observer
  observable.notifyObservers(); // Output: New message received!

  // Remove the Observer
  observable.removeObserver(observer);
}
