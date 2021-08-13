class AppAssets {
  static final AppAssets _instance = AppAssets();
  //path constants
  static const _assetsImagesPath = "assets/images/";
  static const _assetsSocialIconsPath = "assets/icons/social_icons/";
  static const _assetsOfflineCourseIconsPath = "assets/icons/offline_courses/";
  static const _assetsPdfSourcePath = "assets/pdf/";

  //pdf
  final pdfHtml = '${_assetsPdfSourcePath}html_cheat_sheet.pdf';

  //images
  final userProfile = '${_assetsImagesPath}userProfile1.jpg';

// social  icons
  final linkedin = '${_assetsSocialIconsPath}linkedin.png';
  final facebook = '${_assetsSocialIconsPath}facebook.png';
  final github = '${_assetsSocialIconsPath}github.png';
  final instagram = '${_assetsSocialIconsPath}instagram.png';
  final tiktok = '${_assetsSocialIconsPath}tik-tok.png';
  final tiktokRound = '${_assetsSocialIconsPath}tiktok-round.png';
  final twitter = '${_assetsSocialIconsPath}twitter.png';

//offline courses icons
  final cPlus = '${_assetsOfflineCourseIconsPath}c++.png';
  final css = '${_assetsOfflineCourseIconsPath}css.png';
  final git = '${_assetsOfflineCourseIconsPath}git.png';
  final html = '${_assetsOfflineCourseIconsPath}html.png';
  final java = '${_assetsOfflineCourseIconsPath}java.png';
  final python = '${_assetsOfflineCourseIconsPath}py.png';
  final javascript = '${_assetsOfflineCourseIconsPath}javascript.png';
}

AppAssets get appAssets => AppAssets._instance;
