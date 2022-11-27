import 'package:common/structural/composite/lib/composite.dart';

void main() {
  final layout = Column(children: [
    Text(text: "Home page"),
    Column(children: [
      Column(children: [
        Text(text: "News card 1"),
        Text(text: "Sint sit enim laboris officia ex..."),
        Button(text: "View post"),
      ]),
      Column(children: [
        Text(text: "News card 2"),
        Text(text: "Et incididunt nostrud ex dolore..."),
        Button(text: "View post"),
      ]),
      Column(children: [
        Text(text: "News card 3"),
        Text(text: "Aute anim magna magna velit..."),
        Button(text: "View post"),
      ]),
    ]),
    Button(text: "Submit button"),
  ]);
  layout.display(0);
}
