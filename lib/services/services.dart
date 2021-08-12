import 'package:url_launcher/url_launcher.dart';

class Services {
  static Future<void> launchURL({required String url}) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw Exception('Could not launch $url');
    }
  }
}
