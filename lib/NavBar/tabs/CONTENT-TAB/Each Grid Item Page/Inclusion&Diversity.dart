import 'package:flutter/material.dart';
class InclusionAndDiversity extends StatelessWidget {
  const InclusionAndDiversity({super.key});

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