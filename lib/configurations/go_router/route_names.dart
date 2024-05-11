class RouteNames {
  /// Private constructor to prevent instantiation
  RouteNames._();

  /// Singleton instance
  static final RouteNames _instance = RouteNames._();

  /// Factory method to access the singleton instance
  factory RouteNames() => _instance;

  static const String mainApplication = '/';
  static const String camera = 'camera';
  static const String notFound = '/not-found';
  static const String unknown = '/unknown';
}
