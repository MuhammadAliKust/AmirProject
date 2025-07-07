import 'package:flutter/material.dart';
import 'package:ibad_project/provider/sum.dart';
import 'package:provider/provider.dart';

class CalculatorView extends StatefulWidget {
  CalculatorView({super.key});

  @override
  State<CalculatorView> createState() => _CalculatorViewState();
}

class _CalculatorViewState extends State<CalculatorView> {
  TextEditingController firstController = TextEditingController();
  TextEditingController secondController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var sumProvider = Provider.of<SumProvider>(context);
    return Scaffold(
      appBar: AppBar(title: Text("Calculator")),
      body: Column(
        children: [
          TextField(controller: firstController),
          TextField(controller: secondController),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              sumProvider.setSum(
                int.parse(firstController.text),
                int.parse(secondController.text),
              );
            },
            child: Text("Calculate"),
          ),
          SizedBox(height: 20),
          Text(sumProvider.getSum().toString(), style: TextStyle(fontSize: 40)),
        ],
      ),
    );
  }
}
