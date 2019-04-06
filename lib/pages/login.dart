import 'package:flutter/material.dart';
import 'package:parkingplace/behaviors/hiddenScrollBehavior.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LoginPageState();
// TODO: implement createState
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        decoration: new BoxDecoration(
            image: new DecorationImage(
                image: new AssetImage("assets/images/font.jpg"),
                colorFilter: new ColorFilter.mode(
                    Colors.black.withOpacity(0.2), BlendMode.dstIn),
                fit: BoxFit.cover)),
        padding: EdgeInsets.all(50.0),
        child: ScrollConfiguration(
          behavior: HiddenScrollBehavior(),
          child: Form(
            child: ListView(

              children: <Widget>[
                Image.asset(
                  'assets/images/logo2.png',
                  colorBlendMode: BlendMode.dstATop,
                  height: 250.0,
                  alignment: Alignment.center,
                ),
                new Container(

                  padding: EdgeInsets.symmetric(vertical: 30),
                  child: new TextFormField(
                    autocorrect: false,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(labelText: 'Correo o Usuario'),
                  ),
                ),

                TextFormField(
                  autocorrect: false,
                  obscureText: true,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    labelText: 'Contraseña',
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 30.0),
                  child: Text(
                    'Bienvenido a Parking Place.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 50),
                        fontSize: 12.0),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      persistentFooterButtons: <Widget>[
        FlatButton(
          splashColor: Colors.white30,
          highlightColor: Colors.transparent,
          onPressed: () {
            Navigator.of(context).pushNamed('/register');
          },
          child: Text(
            '¿Aun no te creaste una cuenta?',
            style: TextStyle(
                color: Color.fromRGBO(255, 255, 255, 1), fontSize: 15.0),
          ),
        ),
      ],
    );
  }
}