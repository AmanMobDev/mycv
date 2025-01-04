/*******************************************************************************
 *Created By Aman Mishra
 ******************************************************************************/

import 'dart:html' as html;

import 'package:mycv/src/config/export.dart';

launchURL({required String link}) async {
  final Uri url = Uri.parse(link);
  if (!await launchUrl(url)) {
    throw Exception('Could not launch $url');
  }
}

void downloadFile(String url) {
  html.AnchorElement anchorElement = html.AnchorElement(href: url);
  anchorElement.download = "AMAN_MISHRA_FLUTTER_DEVELOPER_5+YEAR.pdf";
  anchorElement.click();
}
