abstract class Developer {
  void drink();
  void debugCode();
  void writeCode();

  void work() {
    drink();
    writeCode();
    drink();
    writeCode();
    drink();
    debugCode();
    print("I've done my work. I'm going home");
  }
}