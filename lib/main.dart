import 'package:flash_chat/screens/ChatScreen.dart';
import 'package:flash_chat/screens/LoginScreen.dart';
import 'package:flash_chat/screens/WelcomeScreen.dart';
import 'package:flash_chat/screens/registraionScreen.dart';
import 'package:flutter/material.dart';

void main() => runApp(FlashChat());

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: WelcomePage.id,
      routes: {
        WelcomePage.id: (context) => WelcomePage(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        ChatScreen.id: (context) => ChatScreen(),
      },
      debugShowCheckedModeBanner: false,
      home: WelcomePage(),
      theme: ThemeData.dark().copyWith(
          textTheme: TextTheme(bodyText2: TextStyle(color: Colors.black))),
    );
  }
}
