import 'package:flutter/material.dart';
import 'package:ibad_project/models/notification.dart';
import 'package:ibad_project/provider/user.dart';
import 'package:ibad_project/screen_b.dart';
import 'package:provider/provider.dart';

class ScreenAView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var userProvider = Provider.of<UserProvider>(context);
    return Scaffold(
      appBar: AppBar(title: Text("Screen A")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            userProvider.setName('Ali');
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ScreenBView()),
            );
          },
          child: Text("Screen A"),
        ),
      ),
    );
  }
}
