import 'dart:ui';
import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Pagina1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animacion_1'),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: FaIcon(FontAwesomeIcons.twitter),
          ),
          IconButton(
              icon: FaIcon(FontAwesomeIcons.arrowAltCircleRight),
              onPressed: () {
                Navigator.push(
                    context,
                    CupertinoPageRoute(
                        builder: (BuildContext context) => Pagina1Page()));
              })
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: FaIcon(FontAwesomeIcons.play),
        onPressed: () {},
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElasticIn(
              delay: Duration(milliseconds: 3500),
              child: FaIcon(
                FontAwesomeIcons.accusoft,
                color: Colors.blue,
                size: 40,
              ),
            ),
            FadeInDown(
              duration: Duration(milliseconds: 3000),
              child: Text(
                'Titulo',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
            ),
            FadeInDown(
              duration: Duration(milliseconds: 2000),
              child: Text(
                'Texto pequeño',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w100),
              ),
            ),
            FadeInLeft(
                delay: Duration(milliseconds: 4500),
                child: Container(
                  width: 220,
                  height: 2,
                  color: Colors.blueGrey,
                ))
          ],
        ),
      ),
    );
  }
}
