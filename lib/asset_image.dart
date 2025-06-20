import 'package:flutter/material.dart';

class AssetImageDemo extends StatelessWidget {
   AssetImageDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Asset Image"), centerTitle: true),
      body: Image.asset(
        'assets/images/1.png',
        height: 100,
        width: 500,
        fit: BoxFit.cover,
      ),
    );
  }
}
