import 'package:flutter/material.dart';
class TechBytes extends StatelessWidget {
  const TechBytes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ElevatedButton(
        onPressed: ()
        {
          Navigator.pop(context);
        },
        child: Text("TB"),
      ),
    );
  }
}