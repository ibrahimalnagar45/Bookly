import 'package:bookly/core/utils/services/show_snak_bar.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> customlaunchUrl(context, String url) async {
  final Uri _uri = Uri.parse(url);
  if (await canLaunchUrl(_uri)) {
    launchUrl(_uri);
  }
  showSnakBar('Could not launch $url', context);

  // if (!await launchUrl(_uri)) {
  //   showSnakBar('Could not launch $url', context);
  // }
}
