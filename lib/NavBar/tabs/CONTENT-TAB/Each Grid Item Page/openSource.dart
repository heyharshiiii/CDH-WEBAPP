import 'package:flutter/material.dart';
class OpenSource extends StatelessWidget {
  const OpenSource({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ElevatedButton(
        onPressed: ()
        {
          Navigator.pop(context);
        },
        child: Text("Hey"),
      ),
    );
  }
}