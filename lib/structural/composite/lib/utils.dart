class Printer {
  static void printWithPadding(int padding, String content) {
    final paddingString = List.filled(padding, "  ", growable: false).join("");
    print("$paddingString$content");
  }
}
