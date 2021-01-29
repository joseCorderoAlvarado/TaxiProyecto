import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taxiservicios/src/widgets/CustomPaintDiagonal_widget.dart';
import 'package:taxiservicios/src/widgets/Login_Widget.dart';
import 'package:taxiservicios/src/widgets/LinkRegister_Widget.dart';
import 'package:taxiservicios/src/widgets/RotatedLogo_widget.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: 300,
                width: double.infinity,
                child: CustomPaintDiagonal(),
              ),
              Rotatedlogo(),
              Padding(padding: EdgeInsets.all(20)),
            ],
          ),
          Column(
            children: [
              FormLogin(),
              Padding(padding: EdgeInsets.all(10)),
              LinkRegister(),
            ],
          ),
        ],
      ),
    );
  }
}
