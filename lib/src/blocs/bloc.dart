//import async for SteamController
import 'dart:async';

class Bloc {
  // Adding an underscore _ means the variable name will not be accessible outside of this class,
  // The underscore makes the variable private
  final _email = StreamController<String>(); //will only allow Strings to flow through
  final _password = StreamController<String>();

  // Add data to stream
  // When we call bloc.email, it will return a Stream of String
  Stream<String> get email => _email.stream;
  Stream<String> get password => _password.stream;

  // Change data
  // When we call bloc.changeEmail, we will return a Function that accepts a STring
  Function(String) get changeEmail => _email.sink.add;
  Function(String) get changePassword => _password.sink.add;
}
