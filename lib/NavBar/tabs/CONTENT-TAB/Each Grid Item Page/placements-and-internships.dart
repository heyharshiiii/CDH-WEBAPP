import 'package:flutter/material.dart';
class PlacementAndInternship extends StatelessWidget {
  const PlacementAndInternship({super.key});

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