import 'package:flutter/material.dart';
import 'package:parkingplace/behaviors/hiddenScrollBehavior.dart';

class RegisterPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _RegisterPageState();
// TODO: implement createState
}

class _RegisterPageState extends State<RegisterPage> {
  String _email;
  String _password;

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
        padding: EdgeInsets.all(40.0),
        child: ScrollConfiguration(
          behavior: HiddenScrollBehavior(),
          child: Form(
            child: ListView(
              children: <Widget>[
                Image.asset(
                  'assets/images/logo2.png',
                  height: 180.0,
                  alignment: Alignment.center,
                ),
                new Container(
                  width: 50.0,
                  child: new TextFormField(
                    autocorrect: false,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(labelText: 'Nombres'),
                  ),
                ),
                TextFormField(
                  autocorrect: false,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(labelText: 'Apellidos'),
                ),

                TextFormField(
                  autocorrect: false,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(labelText: 'Correo'),
                ),
                TextFormField(
                  autocorrect: false,
                  obscureText: true,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    labelText: 'Contraseña',
                  ),
                ),
                TextFormField(
                  autocorrect: false,
                  obscureText: true,
                  keyboardType: TextInputType.text,
                  decoration:
                  InputDecoration(labelText: 'Confirmar Contraseña'),
                ),

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
            Navigator.of(context).pushNamed('/login');
          },
          child: Text(
            '¿Ya tienes una cuenta?',
            style: TextStyle(
                color: Color.fromRGBO(255, 255, 255, 1), fontSize: 15.0),
          ),
        ),
      ],
    );
  }
}
