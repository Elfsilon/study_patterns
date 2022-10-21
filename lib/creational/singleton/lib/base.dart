abstract class BaseClass {
  BaseClass(this._value);
  
  int _value;

  get value => _value;
  void increment() => _value++;
}