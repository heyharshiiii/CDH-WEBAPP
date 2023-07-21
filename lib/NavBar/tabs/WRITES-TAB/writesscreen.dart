import 'package:cdh2/NavBar/tabs/WRITES-TAB/carousal.dart';
import 'package:cdh2/footer.dart';
import 'package:flutter/material.dart';

class WritesScreen extends StatefulWidget {
  const WritesScreen({super.key});

  @override
  State<WritesScreen> createState() => _WritesScreenState();
}

class _WritesScreenState extends State<WritesScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("data"),
          SizedBox(height: 25,),
          DestinationCarousel(),
          SizedBox(height: 25,),
          Footer()
        ],
      ),
    );
  }
}