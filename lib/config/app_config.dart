class AppConfig {
  factory AppConfig() => _instance;
  AppConfig._internal();

  static final AppConfig _instance = AppConfig._internal();

  String flavor = '';
  bool displayFlavor = true;
  String githubAccessToken = '';

  Future<void> load() async {
    flavor = const String.fromEnvironment('FLAVOR');
    displayFlavor = flavor != 'prod';
    githubAccessToken = const String.fromEnvironment('GITHUB_ACCESS_TOKEN');

    switch (flavor) {
      case 'prod':
        break;
    }
  }
}
