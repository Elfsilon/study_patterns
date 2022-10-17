mixin Observer<T> {  
  void notify(T state) => onChange(state);

  void onChange(T state);
}