import 'package:flutter/material.dart';
import 'package:taxiservicios/src/pages/splash_page.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Animaciones',
      home: SplashPage(),
    );
  }
}
