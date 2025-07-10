import 'package:flutter/cupertino.dart';

class BalanceProvider extends ChangeNotifier {
  double _balance = 0.0;

  void setBalance(double val) {
    _balance = val;
    notifyListeners();
  }

  double getBalance() => _balance;
}
