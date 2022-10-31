import 'package:common/behavioural/template_method/lib/abstract_class.dart';

class JuniorDeveloper extends Developer {
  @override
  void drink() {
    print("Drinking coffee");
  }

  @override
  void writeCode() {
    print("Copying code from stackowerflow");
    print("Staring at the floor for 5 minutes");
    drink();
    print("Staring at the floor for 5 minutes");
  }

  @override
  void debugCode() {
    print("Get NullPointerException");
    print("Ass starts to burn");
    print("Trying to google ready code to solve the problem");
    print("Ask teamlead for help");
    print("Teamlead do magic and makes code to work");
    print("Juni is happy now. Junni is good boy.");
  }
}

class MiddleDeveloper extends Developer {
  @override
  void drink() {
    print("Drinking coffee");
  }

  @override
  void writeCode() {
    print("Writing a code for a long time continuously");
    print("Break");
  }

  @override
  void debugCode() {
    print("Easily debug all the errors");
  }
}

class SeniorDeveloper extends Developer {
  @override
  void drink() {
    print("Drinking coffee");
  }

  @override
  void writeCode() {
    print("Do magic");
  }

  @override
  void debugCode() {
    print("Code runs without any error");
  }
}