import 'package:flutter/material.dart';
import 'package:ibad_project/asset_image.dart';
import 'package:ibad_project/dashboard.dart';
import 'package:ibad_project/first_screen.dart';
import 'package:ibad_project/grid_view.dart';
import 'package:ibad_project/multi_list_view.dart';
import 'package:ibad_project/networ_image.dart';
import 'package:ibad_project/provider/balance.dart';
import 'package:ibad_project/provider/sum.dart';
import 'package:ibad_project/provider/user.dart';
import 'package:ibad_project/screen_a.dart';
import 'package:ibad_project/tabbar.dart';
import 'package:provider/provider.dart';

import 'bottom_bar.dart';
import 'calculator.dart';
import 'file_image.dart';
import 'list_view.dart';
import 'login.dart';
import 'notifications_view.dart';
import 'onboarding.dart';

void main() {
  runApp(
    MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context)=>BalanceProvider())
        ],
        child: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: DashboardView());
  }
}
