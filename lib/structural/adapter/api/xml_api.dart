const String _xmlResponse = '''
  <?xml version="1.0"?>
  <users>
    <user>
      <name>maks</name>
      <email>maks@gmail.com</email>
    </user>
    <user>
      <name>sveta</name>
      <email>sveta@gmail.com</email>
    </user>
  </users>
  ''';

class XmlUserApi {
  String getUsersXml() => _xmlResponse;
}