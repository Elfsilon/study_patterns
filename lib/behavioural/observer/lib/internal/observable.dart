import 'package:common/behavioural/observer/lib/internal/observer.dart';

typedef ObservableCallback<T> = void Function(T state);

class Observable<T> {
  Observable(T initialState): _internalState = initialState;

  T _internalState;
  List<Observer> _listeners = [];
  List<ObservableCallback<T>> _callbacks = [];

  get state => _internalState;

  void subscribe(Observer listener) {
    _listeners.add(listener);
  }

  void _notifyListeners(T state) {
    for (final listener in _listeners) {
      listener.notify(state);
    }

    for (final callback in _callbacks) {
      callback(state);
    }
  }

  void setState(T Function() callback) {
    final newState = callback();
    if (newState != _internalState) {
      _internalState = newState;
      _notifyListeners(_internalState);
    }
  }

  void listen(ObservableCallback<T> callback) {
    _callbacks.add(callback);
  }
}