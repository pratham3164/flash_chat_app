import 'package:flash_chat/screens/LoginScreen.dart';
import 'package:flash_chat/screens/registraionScreen.dart';
import 'package:flash_chat/utils/roundedButton.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class WelcomePage extends StatefulWidget {
  static String id = 'welcomeScreen';
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.close),
            onPressed: () {},
          ),
        ],
        title: Text('F Chat'),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Hero(
                    tag: 'logo',
                    child: Container(
                        child: Image.asset('images/logo.png'), height: 60)),
                TypewriterAnimatedTextKit(
                    isRepeatingAnimation: false,
                    speed: Duration(seconds: 1),
                    text: ['Flash Chat'],
                    textStyle:
                        TextStyle(fontSize: 45.0, fontWeight: FontWeight.w700))
              ],
            ),
            SizedBox(height: 48),
            RoundedButton(
                label: 'Log In',
                onPressed: () {
                  Navigator.pushNamed(context, LoginScreen.id);
                }),
            RoundedButton(
                label: 'Register',
                onPressed: () {
                  Navigator.pushNamed(context, RegistrationScreen.id);
                },
                color: Colors.blueAccent),
          ],
        ),
      )),
    );
  }
}
