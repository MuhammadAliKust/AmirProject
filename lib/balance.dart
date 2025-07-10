import 'package:flutter/material.dart';
import 'package:ibad_project/provider/balance.dart';
import 'package:provider/provider.dart';

class BalanceView extends StatelessWidget {
  const BalanceView({super.key});

  @override
  Widget build(BuildContext context) {

    var balanceProvider = Provider.of<BalanceProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Balance"),
      ),
      body: Center(child: Text(balanceProvider.getBalance().toString()),),
    );
  }
}

