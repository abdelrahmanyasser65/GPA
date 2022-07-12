import 'package:flutter/material.dart';

class MainLogic extends ChangeNotifier{
  double gpa=0.0;
  double hours=000;
  double points=000;
  void changeGPA(
      double hour,double point
      ){
    gpa=point/hour;
    points=point;
    hours=hour;
    notifyListeners();
  }

}