import 'package:flutter/material.dart';

class ListViewDemo extends StatefulWidget {
  const ListViewDemo({super.key});

  @override
  State<ListViewDemo> createState() => _ListViewDemoState();
}

class _ListViewDemoState extends State<ListViewDemo> {
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("List View Demo")),
      body: ListView.builder(
        itemBuilder: (context, i) {
          return Card(
            color: selectedIndex == i ? Colors.blue : Colors.white,
            child: ListTile(
              onTap: () {
                selectedIndex = i;
                setState(() {});
              },
              leading: Icon(Icons.notifications),
              title: Text("Loop Index: $i"),
              subtitle: Text("Selected Index: $selectedIndex"),
              trailing: Icon(Icons.arrow_forward),
            ),
          );
        },
      ),
    );
  }
}
