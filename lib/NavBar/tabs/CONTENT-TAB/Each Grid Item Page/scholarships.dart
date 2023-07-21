import 'package:flutter/material.dart';
class Scholarships extends StatelessWidget {
  const Scholarships({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ElevatedButton(
        onPressed: ()
        {
          Navigator.pop(context);
        },
        child: Text("scholarships"),
      ),
    );
  }
}