import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New App'),
        backgroundColor: Colors.greenAccent,
      ),
      body: Container(
          decoration: const BoxDecoration(
        gradient: LinearGradient(
            colors: [Colors.blueGrey, Colors.greenAccent, Colors.blueGrey],
            begin: Alignment.bottomRight,
            end: Alignment.topRight),
      )),
    );
  }
}
