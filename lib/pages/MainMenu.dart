import 'package:flutter/material.dart';
import 'package:parkingplace/pages/card_room.dart';
class MainMenu extends StatefulWidget {

  @override
  _MainMenuState createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  String currentProfilePic = "https://www.freeiconspng.com/uploads/account-icon-8.pngoloo";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Parking Place"), backgroundColor: Colors.teal,),

        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(

                accountEmail:Text("gabriel.valda33@gmail.com"),
                accountName: Text("Gabriel"),
                currentAccountPicture: GestureDetector(
                  child: CircleAvatar(
                    backgroundImage: new AssetImage("assets/images/account.png"),
                  ),
                  onTap: () => print("This is your current account."),
                ),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: new AssetImage("assets/images/fondo.jpg"),
                        fit: BoxFit.fill
                    )
                ),
              ),
              ListTile(
                  title: Text("Ver Estacionamientos"),
                  trailing: Icon(Icons.gps_fixed),
                  onTap: () {
                    Navigator.of(context).pop();
                  }
              ),
              ListTile(
                  title: Text("Ver Reservas"),
                  trailing: Icon(Icons.bookmark),
                  onTap: () {
                    Navigator.of(context).pop();
                  }
              ),
              ListTile(
                  title: Text("Cerrar Sesion"),
                  trailing: Icon(Icons.cancel),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).pushNamed('/login');
                  }
              ),

              ListTile(
                title: Text("Cancel"),
                trailing: Icon(Icons.cancel),
                onTap: () => Navigator.pop(context),
              ),
            ],
          ),
        ),
        body: ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 20.0, top: 10.0),
              child: Text(
                "Estacionamientos cercanos",
                textDirection: TextDirection.ltr,
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.white
                ),
              ),
            ),
            CardRoom("assets/images/est1.jpg", "Estacionamiento 1"),
            CardRoom("assets/images/est2.jpg", "Estacionamiento 2"),
            CardRoom("assets/images/est3.jpg", "Estacionmiento 3"),
            CardRoom("assets/images/est4.jpg", "Estacionamiento 4"),
          ],
        )
    );
  }
}
