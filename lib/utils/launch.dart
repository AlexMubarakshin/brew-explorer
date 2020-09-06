import 'package:url_launcher/url_launcher.dart' as url_launcher;

/// Allow launch url's or application
Future launch(String url) async {
  if (url == null) {
    throw 'Url is empty $url';
  }

  final bool isCanLaunch = await url_launcher.canLaunch(url);
  if (isCanLaunch) {
    await url_launcher.launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
