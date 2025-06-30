import 'package:flutter/material.dart';
import 'package:ibad_project/asset_image.dart';
import 'package:ibad_project/multi_list_view.dart';
import 'package:ibad_project/networ_image.dart';

import 'file_image.dart';
import 'list_view.dart';
import 'login.dart';
import 'notifications_view.dart';
import 'onboarding.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: OnboardingView(),
    );
  }
}
