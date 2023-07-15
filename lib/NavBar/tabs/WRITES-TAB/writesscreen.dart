import 'package:flutter/material.dart';

class WritesScreen extends StatefulWidget {
  const WritesScreen({super.key});

  @override
  State<WritesScreen> createState() => _WritesScreenState();
}

class _WritesScreenState extends State<WritesScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(child: Center(
      child: Text('Writes tab'),
    ),);
  }
}