import 'package:flutter/material.dart';

class MyImageWidget extends StatelessWidget {
  final String imagePath;

  MyImageWidget(this.imagePath);

  @override
  Widget build(BuildContext context) {
    final imageUrl = 'https://storage.googleapis.com/gs://cdh-web-a8712.appspot.com/$imagePath';

    return Image.network(imageUrl);
  }
}
