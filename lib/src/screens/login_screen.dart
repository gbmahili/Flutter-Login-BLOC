import 'package:flutter/material.dart';
import 'package:login_bloc/src/screens/school_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({
    Key key,
    @required this.black,
  }) : super(key: key);

  final Color black;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowMaterialGrid: false,
      title: 'Log Me In',
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Login',
            style: TextStyle(color: black),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Icon(
            Icons.motorcycle,
            color: black,
          ),
          actions: <Widget>[new Actions(black: black)],
        ),
        body: new Container(
          margin: new EdgeInsets.all(20.0),
          child: new Column(
            children: <Widget>[
              emailField(),
              passwordlField(),
              SizedBox(
                height: 20.0,
              ),
              submitButton(),
            ],
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }

  Widget emailField() {
    return new TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: new InputDecoration(
          hintText: 'you@email.com',
          labelText: 'Email Address',
          labelStyle: TextStyle(color: black),
          hintStyle: TextStyle(color: black)),
    );
  }

  Widget passwordlField() {
    return new TextField(
      obscureText: true,
      decoration: new InputDecoration(
        hintText: 'Password',
        labelText: 'Password',
        labelStyle: TextStyle(color: black),
        hintStyle: TextStyle(color: black),
      ),
    );
  }

  Widget submitButton() {
    return RaisedButton(
      child: Text(
        'Login',
        style: TextStyle(color: Colors.white),
      ),
      color: black,
      onPressed: () {},
    );
  }
}

class Actions extends StatelessWidget {
  const Actions({
    Key key,
    @required this.black,
  }) : super(key: key);

  final Color black;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Icon(
            Icons.person,
            color: black,
          ),
          SizedBox(
            width: 20,
          ),
          IconButton(
            color: black,
            icon: Icon(Icons.school),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => School()));
            },
          ),
          SizedBox(
            width: 20,
          ),
        ],
      ),
    );
  }
}
