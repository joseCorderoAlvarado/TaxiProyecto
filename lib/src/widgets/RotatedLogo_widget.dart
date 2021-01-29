import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class Rotatedlogo extends StatelessWidget {
  const Rotatedlogo({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200.0,
      height: 200.0,
      transform: Matrix4.rotationZ(0.3),
      child: Swing(infinite: true, child: Image.asset('images/logo.png')),
    );
  }
}
