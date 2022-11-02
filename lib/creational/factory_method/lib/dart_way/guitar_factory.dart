abstract class DartGuitar {
  factory DartGuitar.jackson() => DartJacksonGuitar();
  factory DartGuitar.ibanez() => DartIbanezGuitar();
  void description();
}

class DartJacksonGuitar implements DartGuitar {
  @override
  void description() {
    print("It's the Jackson");
  }
}

class DartIbanezGuitar implements DartGuitar {
  @override
  void description() {
    print("It's the Ibanez");
  }
}