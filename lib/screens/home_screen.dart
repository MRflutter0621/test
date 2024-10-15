import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New App'),
        backgroundColor: Colors.redAccent,
      ),
      body: Container(
        color: Colors.amber,
      ),
    );
  }
}
