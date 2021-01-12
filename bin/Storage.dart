class Storage {
  static final Storage _singleton = Storage._internal();
  factory Storage() {
    return _singleton;
  }
  Storage._internal();

  String token = '';
  Future<String> getToken() async {
    return token;
  }

  Future<void> setToken(String token) async {
    this.token = token;
  }
}
