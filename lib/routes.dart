import 'package:flutter/material.dart';
import 'package:parkingplace/pages/forgot.dart';
import 'package:parkingplace/pages/login.dart';
import 'package:parkingplace/pages/register.dart';
import 'package:parkingplace/pages/Splash.dart';

Map<String,WidgetBuilder> buildAppRoutes(){
  return{
    '/login':(BuildContext context)=> new LoginPage(),
    '/register':(BuildContext context)=> new RegisterPage(),
    '/forgot':(BuildContext context)=> new ForgotPage(),
    '/splash':(BuildContext context)=> new SplashPage(),
  };
}