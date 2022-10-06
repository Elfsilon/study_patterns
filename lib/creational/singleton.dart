abstract class SingletonState {
  SingletonState(this._value);
  
  int _value;

  get value => _value;
  void increment() => _value++;
}

class ClassicSingletonExample extends SingletonState {
  static ClassicSingletonExample? _instance;

  ClassicSingletonExample._internal(): super(0) {}

  static ClassicSingletonExample getInstance() {
    _instance ??= ClassicSingletonExample._internal();
    return _instance as ClassicSingletonExample;
  }
}

class DartSingletonExample extends SingletonState {
  static final DartSingletonExample _instance = DartSingletonExample._internal();

  factory DartSingletonExample() {
    return _instance;
  }

  DartSingletonExample._internal(): super(0);
}

class DartLightSingletonExample extends SingletonState {
  static final DartLightSingletonExample instance = DartLightSingletonExample._internal();
  DartLightSingletonExample._internal(): super(0);
}