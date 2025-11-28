class ApiConfig {
  const ApiConfig._();

  static late final String url;

  static void set(String value) => url = '$value/api/v1';
}
