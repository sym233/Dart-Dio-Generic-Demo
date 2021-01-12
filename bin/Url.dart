/// CHANGE IT
class Url {
  /// CHANGE IT
  static final String userBaseUrl = 'https://example.com';
  static final String supervisorUrl = 'https://example.com';
  static String get login => '$userBaseUrl/v1/users/login';
  static String get logout => '$userBaseUrl/v1/users/logout';
  static String get projectSelect => '$supervisorUrl/v1/projects/select';
}
