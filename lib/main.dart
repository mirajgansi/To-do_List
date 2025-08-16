import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'package:todoapp/pages/HomePage.dart';

void main() async {
  //init the hive
  await Hive.initFlutter();
  //open box
  var box = await Hive.openBox('mybox');

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(useMaterial3: false, primarySwatch: Colors.amber),
    );
  }
}
