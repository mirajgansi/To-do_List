import 'package:hive/hive.dart';

class ToDODatabase {
  List todoList = [];
  // Refrence our box
  final _mybox = Hive.box('mybox');

  // run this method if this is the 1 st time ever opening thios app
  void createInitialData() {
    todoList = [
      ["Make tutotail", false],
      ["Do Exercise", false],
    ];
  }

  // load the data from database

  void loadData() {
    todoList = _mybox.get("TODOLIST");
  }

  void updateDataBase() {
    _mybox.put("TODOLIST", todoList);
  }
}
