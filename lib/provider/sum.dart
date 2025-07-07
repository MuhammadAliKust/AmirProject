import 'package:flutter/cupertino.dart';

class SumProvider extends ChangeNotifier {
  int _sum = 0;

  void setSum(int a, int b) {
    _sum = a + b;
    notifyListeners();
  }

  int getSum() => _sum;
}
