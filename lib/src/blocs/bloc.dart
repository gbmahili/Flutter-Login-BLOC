//import async for SteamController
import 'dart:async';
class Bloc {
  final emailController = StreamController<String>();//will only allow Strings to flow through
  final passwordController = StreamController<String>();
}