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
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              const Image(
                  height: 80,
                  image: AssetImage(
                      'assets/image/Spotify_logo_with_text.svg.png')),
              const SizedBox(
                height: 40,
              ),
              Container(
                height: 450,
                width: 350,
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: const Color.fromARGB(255, 219, 214, 214)
                            .withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset:
                            const Offset(3, 3), // changes position of shadow
                      ),
                    ],
                    borderRadius: BorderRadius.circular(30)),
              )
            ],
          ),
        ));
  }
}
