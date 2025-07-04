import 'package:flutter/material.dart';
import 'package:ibad_project/grid_view.dart';
import 'package:ibad_project/login.dart';
import 'package:ibad_project/onboarding.dart';

class TabbarDemo extends StatelessWidget {
  const TabbarDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Tab Bar Demo"),
          bottom: TabBar(
            tabs: [Icon(Icons.home), Icon(Icons.favorite), Icon(Icons.person)],
          ),
        ),
        body: TabBarView(
          children: [LoginView(), OnboardingView(), GridViewDemo()],
        ),
      ),
    );
  }
}
