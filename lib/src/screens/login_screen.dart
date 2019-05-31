// import 'package:flutter/material.dart';
// import 'package:login_bloc/src/screens/school_screen.dart';
// import '../blocs/bloc.dart';

// class LoginScreen extends StatelessWidget {
//   const LoginScreen({
//     Key key,
//     @required this.black,
//   }) : super(key: key);

//   final Color black;

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowMaterialGrid: false,
//       title: 'Log Me In',
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text(
//             'Login',
//             style: TextStyle(color: black),
//           ),
//           backgroundColor: Colors.transparent,
//           elevation: 0,
//           leading: Icon(
//             Icons.motorcycle,
//             color: black,
//           ),
//           actions: <Widget>[new Actions(black: black)],
//         ),
//         body: new Container(
//           margin: new EdgeInsets.all(20.0),
//           child: new Column(
//             children: <Widget>[
//               emailField(),
//               passwordlField(),
//               SizedBox(height: 20.0),
//               submitButton(),
//               SizedBox(height: 20.0),
//             ],
//           ),
//         ),
//       ),
//       debugShowCheckedModeBanner: false,
//     );
//   }

//   Widget emailField() {
//     // Applying the bloc using the StreamBuilder
//     // whenever a key is pressed, that key pressed is going to the onChanged function,
//     // The onChanged function is taking it sending it to the bloc.changedemail sink
//     // Sink adds it to the stream...once streams detects change of data, it calls the
//     // builder which updates the state
//     // new

//     return StreamBuilder(
//       stream: bloc.email, //name of the stream as defined in the bloc
//       builder: (context, snapshot) {
//         //snapshot contains whatever information came across the stream
//         return new TextField(
//           // onChanged: (newValue){
//           //   bloc.changeEmail(newValue);
//           // },
//           //shortcut to the onChanged above is:
//           onChanged: bloc.changeEmail,
//           keyboardType: TextInputType.emailAddress,
//           decoration: new InputDecoration(
//               hintText: 'you@email.com',
//               labelText: 'Email Address',
//               labelStyle: TextStyle(color: black),
//               hintStyle: TextStyle(color: black),
//               errorText: snapshot.error),
//         );
//       },
//     );
//   }

//   Widget passwordlField() {
//     return StreamBuilder(
//       stream: bloc.password,
//       builder: (context, snapshot) {
//         return new TextField(
//           onChanged: bloc.changePassword,
//           obscureText: true,
//           decoration: new InputDecoration(
//               hintText: 'Password',
//               labelText: 'Password',
//               labelStyle: TextStyle(color: black),
//               hintStyle: TextStyle(color: black),
//               errorText: snapshot.error),
//         );
//       },
//     );
//   }

//   Widget submitButton() {
//     return RaisedButton(
//       child: Text(
//         'Login',
//         style: TextStyle(color: Colors.white),
//       ),
//       color: black,
//       onPressed: () {},
//     );
//   }
// }

// class Actions extends StatelessWidget {
//   const Actions({
//     Key key,
//     @required this.black,
//   }) : super(key: key);

//   final Color black;

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Row(
//         children: <Widget>[
//           Icon(
//             Icons.person,
//             color: black,
//           ),
//           SizedBox(
//             width: 20,
//           ),
//           IconButton(
//             color: black,
//             icon: Icon(Icons.school),
//             onPressed: () {
//               Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                       builder: (BuildContext context) => School()));
//             },
//           ),
//           SizedBox(
//             width: 20,
//           ),
//         ],
//       ),
//     );
//   }
// }



// USING SOPED BLOC


import 'package:flutter/material.dart';
import 'package:login_bloc/src/screens/school_screen.dart';
import '../blocs/bloc.dart';
import '../blocs/provider.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({
    Key key,
    @required this.black,
  }) : super(key: key);

  final Color black;

  @override
  Widget build(BuildContext context) {
    // Get access to the bloc here:
    final bloc = Provider.of(context);
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
              emailField(bloc),
              passwordlField(bloc),
              SizedBox(height: 20.0),
              submitButton(),
              SizedBox(height: 20.0),
            ],
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }

  Widget emailField(Bloc bloc) {
    // Applying the bloc using the StreamBuilder
    // whenever a key is pressed, that key pressed is going to the onChanged function,
    // The onChanged function is taking it sending it to the bloc.changedemail sink
    // Sink adds it to the stream...once streams detects change of data, it calls the
    // builder which updates the state
    // new

    return StreamBuilder(
      stream: bloc.email, //name of the stream as defined in the bloc
      builder: (context, snapshot) {
        //snapshot contains whatever information came across the stream
        return new TextField(
          // onChanged: (newValue){
          //   bloc.changeEmail(newValue);
          // },
          //shortcut to the onChanged above is:
          onChanged: bloc.changeEmail,
          keyboardType: TextInputType.emailAddress,
          decoration: new InputDecoration(
              hintText: 'you@email.com',
              labelText: 'Email Address',
              labelStyle: TextStyle(color: black),
              hintStyle: TextStyle(color: black),
              errorText: snapshot.error),
        );
      },
    );
  }

  Widget passwordlField(Bloc bloc) {
    return StreamBuilder(
      stream: bloc.password,
      builder: (context, snapshot) {
        return new TextField(
          onChanged: bloc.changePassword,
          obscureText: true,
          decoration: new InputDecoration(
              hintText: 'Password',
              labelText: 'Password',
              labelStyle: TextStyle(color: black),
              hintStyle: TextStyle(color: black),
              errorText: snapshot.error),
        );
      },
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

