import 'package:flutter/material.dart';
import 'package:parkingplace/pages/MainMenu.dart';
import 'package:parkingplace/pages/login.dart';
import 'package:parkingplace/pages/register.dart';
import 'package:parkingplace/pages/Splash.dart';

Map<String,WidgetBuilder> buildAppRoutes(){
  return{
    '/login':(BuildContext context)=> new LoginPage(),
    '/register':(BuildContext context)=> new RegisterPage(),
    '/splash':(BuildContext context)=> new SplashPage(),
    '/menu':(BuildContext context)=> new MainMenu(),
  };
}