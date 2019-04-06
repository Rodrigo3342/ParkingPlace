import 'package:flutter/material.dart';
import 'package:parkingplace/pages/Splash.dart';
import 'package:parkingplace/pages/login.dart';

import 'package:parkingplace/routes.dart';
import 'package:parkingplace/theme.dart';
import 'package:parkingplace/behaviors/hiddenScrollBehavior.dart';

void main() => runApp(new TodoApp());

class TodoApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _TodoAppState();
}

class _TodoAppState extends State<TodoApp> {
  Widget rootPage = SplashPage();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todo App',
      debugShowCheckedModeBanner: false,
      home: rootPage,
      routes: buildAppRoutes(),
      theme: buildAppTheme(),


    );
  }
}
