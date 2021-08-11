class AppAssets {
  static final AppAssets _instance = AppAssets();
  //path constants
  static const _assetsPath = "assets/images/";

  //images
  final userProfile = '${_assetsPath}userProfile1.jpg';
}

AppAssets get appAssets => AppAssets._instance;
