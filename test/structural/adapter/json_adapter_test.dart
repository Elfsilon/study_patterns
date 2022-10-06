import 'package:common/structural/adapter/api/json_api.dart';
import 'package:common/structural/adapter/api/xml_api.dart';
import 'package:common/structural/adapter/api_adapter/json_adapter.dart';
import 'package:common/structural/adapter/api_adapter/xml_adapter.dart';
import 'package:test/test.dart';

void main() {
  test('json and xml adapters user lists are equal', () async {
    final jsonApi =  JsonUserApi();
    final jsonAdapter = JsonUserApiAdapter(jsonApi);
    final usersFromJson = jsonAdapter.getUsers();

    final xmlApi =  XmlUserApi();
    final xmlAdapter = XmlUserApiAdapter(xmlApi);
    final usersFromXml = xmlAdapter.getUsers();

    expect(usersFromJson.length == usersFromXml.length, true);
    expect(usersFromJson.length, 2);
    bool listElementsAreEqual = true;
    for (int i = 0; i < usersFromJson.length; i++) {
      final bool namesAreEqual = usersFromJson[i].name == usersFromXml[i].name;
      final bool emailsAreEqual = usersFromJson[i].email == usersFromXml[i].email;
      if (!namesAreEqual || !emailsAreEqual) {
        listElementsAreEqual = false;
        break;
      }
    }
    expect(listElementsAreEqual, true);
  });
}