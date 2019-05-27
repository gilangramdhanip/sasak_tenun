import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import '../login_page.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
      seconds: 5,
      navigateAfterSeconds: LoginPage(),
      image: Image.asset("Images/SasakTenun.png"),
      photoSize: 100,
      loaderColor: Colors.blue[100],
      loadingText: Text("Harap Menunggu"),
    );
  }
}