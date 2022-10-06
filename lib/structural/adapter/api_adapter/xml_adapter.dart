import 'package:common/structural/adapter/api/xml_api.dart';
import 'package:common/structural/adapter/api_adapter/adapter.dart';
import 'package:common/structural/adapter/models/user.dart';
import 'package:xml/xml.dart';

class XmlUserApiAdapter implements UserApiAdapter {
  XmlUserApiAdapter(this._api);

  final XmlUserApi _api;

  @override
  List<User> getUsers() {
    final xmlUserList = _api.getUsersXml();
    final userList = _parseUsersXml(xmlUserList);
    return userList;
  }

  List<User> _parseUsersXml(String xml) {
    final usersXml = XmlDocument.parse(xml);
    final userListXml = usersXml.findAllElements("user");
    var userList = <User>[];
    for (var userXml in userListXml) {
      final name = userXml.findElements("name").single.text;
      final email = userXml.findElements("email").single.text;
      final user = User(name: name, email: email);
      userList.add(user);
    }
    return userList;
  }
}