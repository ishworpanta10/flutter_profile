class AppAssets {
  static final AppAssets _instance = AppAssets();
  //path constants
  static const _assetsImagesPath = "assets/images/";
  static const _assetsIconsPath = "assets/icons/";

  //images
  final userProfile = '${_assetsImagesPath}userProfile1.jpg';

//  icons
  final linkedin = '${_assetsIconsPath}linkedin.png';
  final facebook = '${_assetsIconsPath}facebook.png';
  final github = '${_assetsIconsPath}github.png';
  final instagram = '${_assetsIconsPath}instagram.png';
  final tiktok = '${_assetsIconsPath}tik-tok.png';
  final tiktokRound = '${_assetsIconsPath}tiktok-round.png';
  final twitter = '${_assetsIconsPath}twitter.png';
}

AppAssets get appAssets => AppAssets._instance;
