import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('New App'),
          backgroundColor: const Color.fromARGB(255, 94, 239, 191),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
                  Colors.blueGrey,
                  Colors.greenAccent,
                  Colors.blueGrey
                ], begin: Alignment.bottomRight, end: Alignment.topRight),
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
                    height: 470,
                    width: 350,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 229, 234, 229),
                        boxShadow: [
                          BoxShadow(
                            color: const Color.fromARGB(255, 41, 40, 40)
                                .withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: const Offset(
                                3, 3), // changes position of shadow
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
                              'assets/image/Spotify_Primary_Logo_RGB_Green.png',
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: InkWell(
                                  onTap: () {
                                    print('cliked');
                                  },
                                  child: const Text('Forgot password?    ')),
                            )
                          ],
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(elevation: 5),
                            onPressed: () {},
                            child: const Text('login')),
                        const SizedBox(
                          height: 30,
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Don't have an account?/"),
                            InkWell(
                                splashColor: Colors.greenAccent,
                                child: Text(
                                  'Singup',
                                ))
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
