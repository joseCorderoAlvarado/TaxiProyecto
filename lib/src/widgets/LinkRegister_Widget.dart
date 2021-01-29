import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LinkRegister extends StatelessWidget {
  const LinkRegister({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          "Aun no tienes cuenta REGISTRATE",
          style: TextStyle(
            color: Colors.blueGrey,
            fontSize: 20,
          ),
        ),
        Pulse(
          infinite: true,
          child: IconButton(
              icon: FaIcon(
                FontAwesomeIcons.arrowCircleRight,
                size: 25,
                color: Colors.amber,
              ),
              onPressed: () {}),
        ),
      ],
    );
  }
}
