import 'package:flutter/material.dart';
import 'package:passwordfield/passwordfield.dart';
import 'package:sign_button/constants.dart';
import 'package:sign_button/create_button.dart';

class FormLogin extends StatelessWidget {
  const FormLogin({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shadowColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        children: <Widget>[
          Padding(padding: EdgeInsets.all(10)),
          Text(
            "Inicia Sesión Con tu cuenta",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Padding(padding: EdgeInsets.all(10)),
          Theme(
            //El contenedor del TextFormField se envuelve en un tema para cambiar el color
            data: ThemeData(
                primaryColor: Color(0xfffed337),
                primaryColorDark: Color(0xfffed337)),
            child: TextFormField(
              maxLines: 1,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                prefixIcon: Icon(
                  Icons.email,
                  color: Colors.black,
                ),
                hintText: 'Correo eléctronico',
              ),
            ),
          ),
          Padding(padding: EdgeInsets.all(10)),
          Theme(
            //El contenedor del TextFormField se envuelve en un tema para cambiar el color
            data: ThemeData(
                primaryColor: Colors.amberAccent,
                primaryColorDark: Colors.amberAccent),
            child: PasswordField(
              pattern: r'.*[@$#.*].*',
              hintText: 'Contraseña',
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(width: 2, color: Color(0xfffed337))),
              errorMessage:
                  "la contraseña debe tener almenos un caracter especial",
            ),
          ),
          Padding(padding: EdgeInsets.all(10)),
          GestureDetector(
            onTap: () {},
            child: Text(
              "¿Olvide mi Contraseña?",
              style: TextStyle(
                color: Colors.blueGrey,
              ),
            ),
          ),
          Padding(padding: EdgeInsets.all(10)),
          SizedBox(
            width: 200,
            height: 50,
            child: RaisedButton(
                elevation: 10.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: BorderSide(color: Colors.black)),
                child: Text("Iniciar sesión ",
                    style: TextStyle(
                      fontSize: 20,
                    )),
                color: Color(0xfffed337),
                onPressed: () {}),
          ),
          Padding(padding: EdgeInsets.all(10)),
          Text(
            "O inicia sesión con",
            style: TextStyle(
              color: Colors.blueGrey,
              fontSize: 25,
            ),
          ),
          Padding(padding: EdgeInsets.all(10)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SignInButton(
                buttonType: ButtonType.facebook,
                imagePosition: ImagePosition.right,
                //[buttonSize] You can also use this in combination with [width]. Increases the font and icon size of the button.
                buttonSize: ButtonSize.large,
                btnTextColor: Colors.grey,
                btnColor: Colors.white,
                width: 140,
                //[width] Use if you change the text value.
                btnText: 'Facebook',
                onPressed: () {},
              ),
              Padding(padding: EdgeInsets.all(2)),
              SignInButton(
                buttonType: ButtonType.google,
                imagePosition: ImagePosition.left,
                buttonSize: ButtonSize.large,
                btnTextColor: Colors.grey,
                btnColor: Colors.white,
                width: 140,
                btnText: 'Google',
                onPressed: () {},
              ),
            ],
          ),
          Padding(padding: EdgeInsets.all(10)),
        ],
      ),
    );
  }
}
