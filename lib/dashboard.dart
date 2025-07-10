import 'package:flutter/material.dart';
import 'package:ibad_project/balance.dart';
import 'package:ibad_project/provider/balance.dart';
import 'package:ibad_project/second_screen.dart';
import 'package:provider/provider.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    var balanceProvider = Provider.of<BalanceProvider>(context);
    return Scaffold(
      appBar: AppBar(title: Text("Dashboard Screen")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            balanceProvider.setBalance(10000);
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                   BalanceView()
              ),
            );
          },
          child: Text("Go to Second Screen"),
        ),
      ),
    );
  }
}
