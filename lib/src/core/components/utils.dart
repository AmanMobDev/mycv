/*******************************************************************************
 *Created By Aman Mishra
 ******************************************************************************/

// import 'dart:html' as html;

import 'package:mycv/src/config/export/export.dart';

launchURL({required String link}) async {
  final Uri url = Uri.parse(link);
  if (!await launchUrl(url)) {
    throw Exception('Could not launch $url');
  }
}

// Future<void> downloadPdfFromAssets() async {
//   try {
//     // Load the PDF file from assets
//     ByteData data = await rootBundle
//         .load("assets/files/AMAN_MISHRA_FLUTTER_DEVELOPER_5+YEAR.pdf");
//     List<int> bytes = data.buffer.asUint8List();
//
//     // Get the app's downloads directory
//     Directory? directory = await getExternalStorageDirectory();
//     if (directory == null) return;
//
//     // Define file path
//     String filePath =
//         "${directory.path}/AMAN_MISHRA_FLUTTER_DEVELOPER_5+YEAR.pdf";
//     File file = File(filePath);
//
//     // Write the file
//     await file.writeAsBytes(bytes);
//
//     debugPrint("PDF saved to: $filePath");
//   } catch (e) {
//     debugPrint("Error saving PDF: $e");
//   }
// }

// Future<void> downloadPdfWeb() async {
//   try {
//     // Load the PDF file from assets
//     ByteData data = await rootBundle
//         .load("assets/files/AMAN_MISHRA_FLUTTER_DEVELOPER_5+YEAR.pdf");
//     Uint8List bytes = data.buffer.asUint8List();
//
//     // Create a Blob from the PDF bytes
//     final blob = html.Blob([bytes]);
//
//     // Create an Object URL
//     final url = html.Url.createObjectUrlFromBlob(blob);
//
//     // Create a download anchor element
//     final anchor = html.AnchorElement(href: url)
//       ..setAttribute("download", "AMAN_MISHRA_FLUTTER_DEVELOPER_5+YEAR.pdf")
//       ..click();
//
//     // Release the URL after download
//     html.Url.revokeObjectUrl(url);
//
//     print("PDF downloaded successfully!");
//   } catch (e) {
//     print("Error downloading PDF: $e");
//   }
// }
