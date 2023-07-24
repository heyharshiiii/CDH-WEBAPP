import 'dart:io';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';

Future<void> saveAssetsAsFiles() async {
  // Code for saving assets as files (as shown in the previous example)
  final List<String> assetPaths = [
    
    'assets/images/cdh2.jpg',
    'assets/images/loading.gif',
    'assets/images/neno.jfif',
    'assets/images/profile.jfif',
    'assets/images/team1.jfif',
    'assets/images/contents/article.gif',
    'assets/images/contents/comunity.jfif',
    'assets/images/contents/hackathon.gif',
    'assets/images/contents/internship.jfif',
    'assets/images/contents/Meeting.gif',
    'assets/images/contents/opensource.png',
    'assets/images/contents/scholarship.jfif',
    'assets/images/contents/sessions.jfif',
    'assets/images/contents/tech1.jfif',  
    'assets/images/slider/s1.jfif',
    'assets/images/slider/s2.png',
    'assets/images/slider/s3.png',
    'assets/images/slider/s4.jfif',
    'assets/images/slider/s5.jfif',
    ]; // Add all your asset paths here

  for (String assetPath in assetPaths) {
    final ByteData data = await rootBundle.load(assetPath);
    final Uint8List bytes = data.buffer.asUint8List();

    final String fileName = assetPath.split('/').last;
    final Directory appDir = await getApplicationDocumentsDirectory();
    final File file = File('${appDir.path}/$fileName');

    await file.writeAsBytes(bytes);
  }

  print('All assets saved as files!');
}