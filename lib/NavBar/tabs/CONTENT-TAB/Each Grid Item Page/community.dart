import 'package:flutter/material.dart';
class Community extends StatelessWidget {
  const Community({super.key});

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