class NetworkConfig {
  NetworkConfig._();

  // base url
  static const String baseUrl = "https://www.url.com";

  // Headers
  static const String serverAppKeyName = "X-server-appkey";
  static const String serverAppKeyValue = "server";
  static const String serverAppIdName = "X-server-appid";
  static const String serverAppIdValue = "server";
  static const String sessionTokenName = "X-session-token";

  // receiveTimeout (Seconds)
  static const int receiveTimeout = 60;

  // connectTimeout (Seconds)
  static const int connectionTimeout = 60;

  /// Apis
  // Login
  static const String registerUrl = "/register";
  static const String loginUrl = "/login";

  // Dashboard
  static const String dashboardUrl = "/dashboard";

  // User
  static const String userDetailsUrl = "/details";
  static const String updateUserDetailsUrl = "/edit";
  static const String logoutUrl = "/logout";
}
