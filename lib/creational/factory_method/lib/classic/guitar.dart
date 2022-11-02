abstract class Guitar {
  void description();
}

class JacksonGuitar extends Guitar {
  @override
  void description() {
    print("It's the Jackson");
  }
}

class IbanezGuitar extends Guitar {
  @override
  void description() {
    print("It's the Ibanez");
  }
}