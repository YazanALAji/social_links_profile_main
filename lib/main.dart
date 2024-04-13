import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: const Color.fromRGBO(31, 31, 31, 1),
          ),
          padding: const EdgeInsets.all(20),
          margin: const EdgeInsets.symmetric(vertical: 50, horizontal: 25),
          child: ListView(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    radius: 50.0,
                    backgroundImage: AssetImage('assets/avatar-jessica.jpeg'),
                  ),
                  const SizedBox(height: 20.0),
                  const Text(
                    'Jessica Randall',
                    style: TextStyle(
                      fontFamily: 'Inter-Bold',
                      color: Colors.white,
                      fontSize: 24.0,
                    ),
                  ),
                  const SizedBox(height: 5.0),
                  const Text(
                    'London, United Kingdom',
                    style: TextStyle(
                      fontFamily: 'Inter-SemiBold',
                      color: Color.fromRGBO(197, 248, 42, 1),
                      fontSize: 14.0,
                    ),
                  ),
                  const SizedBox(height: 30.0),
                  const Text(
                    '"Front-end developer and avid reader."',
                    style: TextStyle(
                      fontFamily: 'Inter-Regular',
                      color: Colors.white,
                      fontSize: 14.0,
                    ),
                  ),
                  const SizedBox(height: 20),
                  buildButton('GitHub'),
                  const SizedBox(height: 15),
                  buildButton('Frontend Mentor'),
                  const SizedBox(height: 15),
                  buildButton('Linkedin'),
                  const SizedBox(height: 15),
                  buildButton('Twitter'),
                  const SizedBox(height: 15),
                  buildButton('Instagram'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  ElevatedButton buildButton(String text) {
    return ElevatedButton(
      onPressed: () {},
      style: ButtonStyle(
        shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
        minimumSize: const MaterialStatePropertyAll(Size(300, 50)),
        backgroundColor: MaterialStateProperty.resolveWith<Color>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.hovered)) {
              return const Color.fromRGBO(197, 248, 42, 1);
            } else {
              return const Color.fromRGBO(51, 51, 51, 1);
            }
          },
        ),
        foregroundColor: MaterialStateProperty.resolveWith<Color>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.hovered)) {
              return Colors.black;
            } else {
              return Colors.white;
            }
          },
        ),
      ),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 14.0,
          fontFamily: 'Inter-SemiBold',
        ),
      ),
    );
  }
}
