import 'package:flutter/material.dart';
import 'package:ibad_project/models/notification.dart';

class NotificationView extends StatefulWidget {
  const NotificationView({super.key});

  @override
  State<NotificationView> createState() => _NotificationViewState();
}

class _NotificationViewState extends State<NotificationView> {
  List<NotificationModel> notificationList = [
    NotificationModel(
      title: 'First Notification',
      description: 'First Description',
      time: '11:40 AM',
    ),
    NotificationModel(
      title: 'Second Notification',
      description: 'Second Description',
      time: '12:40 AM',
    ),
    NotificationModel(
      title: 'Third Notification',
      description: 'Third Description',
      time: '9:40 AM',
    ),
  ];

  List<String> titleList = [
    "First Notification",
    "Second Notification",
    "Third Notification",
  ];
  List<String> descriptionList = [
    "First Description",
    "Second Description",
    "Third Description",
  ];
  List<String> timeList = ["11:30", "12:30", "13:30"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("List View Demo")),
      body: ListView.builder(
        itemCount: notificationList.length,
        itemBuilder: (context, i) {
          return Card(
            child: ListTile(
              leading: Icon(Icons.notifications),
              title: Text(titleList[i]),
              subtitle: Text(timeList[i]),
              trailing: Text(titleList[i]),
            ),
          );
        },
      ),
    );
  }
}
