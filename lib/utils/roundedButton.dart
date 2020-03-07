import 'package:flutter/material.dart';
// import '../screens/LoginScreen.dart';
// import '../screens/registraionScreen.dart';

class RoundedButton extends StatelessWidget {
  final label;
  final Color color;
  final onPressed;
  const RoundedButton(
      {Key key,
      @required this.label,
      this.onPressed,
      this.color = Colors.lightBlueAccent})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16),
      child: Material(
        elevation: 5.0,
        borderRadius: BorderRadius.circular(30.0),
        color: color,
        child: MaterialButton(
          onPressed: onPressed,
          minWidth: 200,
          height: 40,
          child: Text(this.label),
        ),
      ),
    );
  }
}
