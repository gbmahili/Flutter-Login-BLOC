import 'package:flutter/material.dart';
import 'package:login_bloc/src/screens/login_screen.dart';
// Use Global State (Inherited Widget)
import 'blocs/provider.dart';

class App extends StatelessWidget {
  final Color black = Colors.blueGrey;
  @override
  Widget build(BuildContext context) {
    return Provider(// wrap the entire child with a provider
      child: new LoginScreen(
        black: black,
      ),
    );
  }
}
