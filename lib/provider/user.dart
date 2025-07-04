import 'package:flutter/cupertino.dart';
import 'package:ibad_project/models/notification.dart';

class UserProvider extends ChangeNotifier {
  String _name = '';
  NotificationModel? _model;

  void setName(String val) {
    _name = val;
    notifyListeners();
  }

  void setNotification(NotificationModel model) {
    _model = model;
    notifyListeners();
  }

  String getName() => _name;

  NotificationModel? getNotification() => _model;
}
