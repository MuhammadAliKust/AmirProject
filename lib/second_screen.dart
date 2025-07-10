import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  final String name;
  final String email;
  const SecondScreen({super.key, required this.name, required this.email});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(),
        leadingWidth: 0,
        title: Text("Second Screen"),
      ),
      body: Column(
        children: [
          Text(name.toString(),style: TextStyle(fontSize: 50),),
          Text(email.toString(),style: TextStyle(fontSize: 50),),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Go back to First Screen"),
            ),
          ),
        ],
      ),
    );
  }
}
