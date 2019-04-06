import 'dart:async';

import 'package:flutter/material.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<SplashPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5), () => Navigator.pushNamed(context, '/login'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromRGBO(60, 61, 54, 0.5),
                Color.fromRGBO(249, 238, 200, 0.5)
              ],
              begin: const FractionalOffset(0.5, 0.0),
              end: const FractionalOffset(0.0, 0.5),
              stops: [0.0, 1.0],
              tileMode: TileMode.clamp,
            )),
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 4,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    "assets/images/logo2.png",
                    alignment: Alignment.center,
                    height: 250.0,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 50.0),
                    child: Column(
                      children: <Widget>[
                        Text(
                          "Parking",
                          style: TextStyle(
                              fontSize: 40,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Place",
                          style: TextStyle(
                              fontSize: 40,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
                flex: 1,
                child: Container(
                  height: 30,
                  width: MediaQuery.of(context).size.width,
                  child: WaveWidget(
                    config: CustomConfig(
                      gradients: [
                        [
                          Colors.white.withOpacity(0.8),
                          Colors.white.withOpacity(0.1)
                        ],
                        [
                          Colors.white.withOpacity(0.8),
                          Colors.white.withOpacity(0.1)
                        ],
                        [
                          Colors.white.withOpacity(0.8),
                          Colors.white.withOpacity(0.1)
                        ],
                        [
                          Colors.white.withOpacity(0.8),
                          Color(0xFFFFFFFF).withOpacity(0.2)
                        ]
                      ],
                      durations: [5000, 4440, 5400, 6000],
                      heightPercentages: [0.10, 0.15, 0.20, 0.25],
                      blur: MaskFilter.blur(BlurStyle.solid, 0),
                    ),
                    backgroundColor: Colors.transparent,
                    size: Size(double.infinity, double.infinity),
                    waveAmplitude: 0,
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
