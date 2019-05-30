import 'package:flutter/material.dart';

class App extends StatelessWidget {
  Color black = Colors.blueGrey;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
          actions: <Widget>[
            Center(
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
                      // Navigator.push(context, Navig)
                    },
                  ),
                  SizedBox(
                    width: 20,
                  ),
                ],
              ),
            )
          ],
        ),
        body: Center(child: Text('hi')),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
