// ignore_for_file: unused_field

import 'package:hive_flutter/hive_flutter.dart';

class ToDoDatabase{

  List toDoList = [];

  //reference the box
  final _myBox = Hive.box('mybox');

  //run this method if this is the first time opening the app
  void createInitialData(){
    toDoList=[
      ["DefaultTask1",false],
      ["DefaultTask2",false],
    ];
  }

  //load the data from database
  void loadData(){
    toDoList = _myBox.get("TODOLIST");

  }

  //update the database
  void updateData(){
    _myBox.put("TODOLIST", toDoList);
  }
}