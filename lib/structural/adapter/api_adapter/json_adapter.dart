import 'dart:convert';

import 'package:common/structural/adapter/api/json_api.dart';
import 'package:common/structural/adapter/api_adapter/adapter.dart';
import 'package:common/structural/adapter/models/user.dart';

class JsonUserApiAdapter implements UserApiAdapter {
  JsonUserApiAdapter(this._api);

  final JsonUserApi _api;

  @override
  List<User> getUsers() {
    final jsonUserList = _api.getUsersJson();
    final userList = _parseUsersJson(jsonUserList);
    return userList;
  }

  List<User> _parseUsersJson(String json) {
    final usersMap = jsonDecode(json) as Map<String, dynamic>;
    final usersMapList = usersMap["users"]["data"] as List;
    final userList = usersMapList.map((json) => User(name: json["name"], email: json["email"])).toList();
    return userList;
  }
}