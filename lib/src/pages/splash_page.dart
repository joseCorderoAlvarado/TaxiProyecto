import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:taxiservicios/src/pages/login_page.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.topRight,
            child: SlideInLeft(
              duration: Duration(milliseconds: 3000),
              child: Image.asset('images/logo2.png'),
            ),
          ),
          FadeInDown(
            duration: Duration(milliseconds: 4000),
            child: Text(
              'Bienvenido',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(30.0),
            child: Container(
              width: 220,
              height: 1,
              color: Colors.black38,
            ),
          ),
          BounceInDown(
            duration: Duration(milliseconds: 4000),
            child: Text(
              'Programa tu Servicio de taxi',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w100),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(15.0),
            child: Container(
              height: 0,
            ),
          ),
          SpinPerfect(
            duration: Duration(milliseconds: 1000),
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: IconButton(
                  icon: FaIcon(
                    FontAwesomeIcons.arrowAltCircleRight,
                    size: 50,
                    color: Colors.amber,
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        CupertinoPageRoute(
                            builder: (BuildContext context) => LoginPage()));
                  }),
            ),
          ),
          Padding(padding: EdgeInsets.all(20.0)),
          Container(
            alignment: Alignment.bottomLeft,
            child: Row(
              children: <Widget>[
                Image.asset(
                  'images/logoNayarit.png',
                  width: 60,
                ),
                Text('NexoIxt © 2020 Copyright: Todos los derechos reservados.',
                    style:
                        TextStyle(fontSize: 10, fontWeight: FontWeight.bold)),
              ],
            ),
          )
        ],
      ),
    );
  }
}
