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
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.blueGrey, Colors.greenAccent, Colors.blueGrey],
                begin: Alignment.bottomRight,
                end: Alignment.topRight),
          ),
          child: const Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Image(
                  height: 80,
                  image: AssetImage(
                      '/Users/akshaybharathan/test/assets/image/Spotify_logo_with_text.svg.png')),
            ],
          ),
        ));
  }
}
