import 'package:flutter/material.dart';
class Hackathons extends StatelessWidget {
  const Hackathons({super.key});

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