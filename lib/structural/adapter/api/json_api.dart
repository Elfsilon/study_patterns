const String _jsonResponse = '''
{
  "users": {
    "data": [
      {
        "name": "maks",
        "email": "maks@gmail.com"
      },
      {
        "name": "sveta",
        "email": "sveta@gmail.com"
      }
    ]
  }
}
''';

class JsonUserApi {
  String getUsersJson() => _jsonResponse;
}