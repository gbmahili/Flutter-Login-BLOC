import 'package:flutter/material.dart';
import 'bloc.dart';

// This is an InheritedWidget even though we named it Provider
class Provider extends InheritedWidget {
  // We create an install of our bloc
  final bloc = new Bloc();

  // Since we are going to put our entire child in this Provider, we need to create a constructor for it
  Provider({Key key, Widget child}) : super(key: key, child: child);

  @override
  bool updateShouldNotify(_) => true;

  ////This function allow deeper widgets (components) to have access to this Bloc
  /// It says, go look up the chaine until you find a widget called Provider
  /// as Provider: just so you know, it is of type Provider
  /// .bloc: Get the bloc out of it.

  static Bloc of(BuildContext context) {
    return (context.inheritFromWidgetOfExactType(Provider) as Provider).bloc;
  }
}
