import 'package:flutter/material.dart';

class App extends StatelessWidget {
  final Color black = Colors.blueGrey;
  @override
  Widget build(BuildContext context) {
    return new Home(black: black,);
  }
}

class Home extends StatelessWidget {
  const Home({
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
            )
          ],
        ),
        body: Center(child: Text('hi')),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class School extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('School'),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}