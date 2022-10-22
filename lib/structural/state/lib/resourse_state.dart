abstract class ResourseState {
  String getData();
}

class Disabled implements ResourseState {
  @override
  String getData() {
    throw Exception("resourse is unavaliable, try again later");
  }
}

class Enabled implements ResourseState {
  @override
  String getData() {
    return '{ "data": { "name": "John", "house": "stark" } }';
  }
}