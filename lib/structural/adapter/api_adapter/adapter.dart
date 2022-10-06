import 'package:common/structural/adapter/models/user.dart';

abstract class UserApiAdapter {
  List<User> getUsers();
}