import 'package:flutter/material.dart';
import 'package:login_bloc/src/screens/login_screen.dart';
class App extends StatelessWidget {
  final Color black = Colors.blueGrey;
  @override
  Widget build(BuildContext context) {
    return new LoginScreen(
      black: black,
    );
  }
}