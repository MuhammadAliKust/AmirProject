import 'package:flutter/material.dart';
import 'package:ibad_project/models/notification.dart';
import 'package:ibad_project/provider/user.dart';
import 'package:provider/provider.dart';

class ScreenBView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    var userProvider = Provider.of<UserProvider>(context);
    return Scaffold(
      appBar: AppBar(title: Text("Screen B")),
      body: Column(
        children: [
          Center(child: Text(userProvider.getName(), style: TextStyle(fontSize: 40))),

        ],
      ),
    );
  }
}
