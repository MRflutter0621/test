import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('New App'),
          backgroundColor: const Color.fromARGB(255, 150, 244, 199),
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
                    color: const Color.fromARGB(255, 207, 240, 207),
                    boxShadow: [
                      BoxShadow(
                        color: const Color.fromARGB(255, 41, 40, 40)
                            .withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset:
                            const Offset(3, 3), // changes position of shadow
                      ),
                    ],
                    borderRadius: BorderRadius.circular(30)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                        height: 150,
                        width: 150,
                        child: Image.asset(
                          'assets/image/profile.png',
                          fit: BoxFit.cover,
                        )),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: '  user id',
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25)))),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: '  password',
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25)))),
                      ),
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(elevation: 5),
                        onPressed: () {},
                        child: const Text('login')),
                    const SizedBox(
                      height: 30,
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
