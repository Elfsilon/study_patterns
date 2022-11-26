class ServiceNames {
  static const authService = "AuthService";
  static const statisticsService = "StatisticsService";
  static const logger = "Logger";
}

class UserData {
  const UserData({
    required this.login,
    required this.lastAuthTime,
    required this.status,
    this.reason,
  });

  final String login;
  final DateTime lastAuthTime;
  final bool status;
  final String? reason;

  @override
  String toString() {
    return "{ login: $login, lastAuthTime: $lastAuthTime, status: $status, reason: $reason }";
  }
}
