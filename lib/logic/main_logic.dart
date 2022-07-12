import 'package:flutter/material.dart';
import 'package:gpacalculate/data/data_helper.dart';
import 'package:gpacalculate/model/gpa_model.dart';

class MainLogic extends ChangeNotifier {
  final DatabaseHelper _databaseHelper = DatabaseHelper.instance;
  int currentSemester = 0;
  int id = 0;
  double gpa = 0.0;
  double hours = 000;
  double points = 000;
  List<GpaModel> _gpaList = [];
  List<GpaModel> get gpaList => _gpaList;
  MainLogic() {
    _gpaList = getAllRows();
  }
  void changeGPA(id, double hour, double point) {
    this.id = id;
    gpa = point / hour;
    points = point;
    hours = hour;
    update();
    notifyListeners();
  }

  void update() {
    _databaseHelper.updateDatabase(
      GpaModel(id, hours, points, gpa),
    ).then((value) {
      _gpaList = getAllRows();
    });
    notifyListeners();
  }

  GpaModel? getRow() {
    GpaModel? gpaModel;
    _databaseHelper.getDatabaseRow(id).then((value) {
      if (value == null) {
        gpaModel = null;
        return;
      } else {
        gpaModel = GpaModel.fromJson(value);
      }
    });
    notifyListeners();
    return gpaModel;
  }

  List<GpaModel> getAllRows() {
    List<GpaModel> allGpa = [];
    _databaseHelper.getAllDatabaseRows().then((value) {
      print('get rows in main logic / then');
      print(value);
      for (var element in value) {
        allGpa.add(GpaModel.fromJson(element),);
      }
    });
    print('get rows in main logic');
    notifyListeners();
    return allGpa;
  }
}
