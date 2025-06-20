import 'package:flutter/material.dart';
import 'package:ibad_project/asset_image.dart';
import 'package:ibad_project/networ_image.dart';

import 'file_image.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FileImageDemo(),
    );
  }
}
