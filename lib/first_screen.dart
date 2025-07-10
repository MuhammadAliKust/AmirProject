import 'package:flutter/material.dart';
import 'package:ibad_project/second_screen.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("First Screen")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    SecondScreen(name: 'Jawad', email: 'jawad@mail.com'),
              ),
            );
          },
          child: Text("Go to Second Screen"),
        ),
      ),
    );
  }
}
