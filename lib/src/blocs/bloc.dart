// // USING SINGLE BLOC

// //import async for SteamController
// import 'dart:async';

// import 'validators.dart';

// // With this bloc, we are using some mixins (methods) that we created in the Validators Class
// // We could have written the below line like this: class Bloc extends Validators{}
// class Bloc extends Object with Validators {
//   // Adding an underscore _ means the variable name will not be accessible outside of this class,
//   // The underscore makes the variable private
//   final _email =
//       StreamController<String>(); //will only allow Strings to flow through
//   final _password = StreamController<String>();
//   final _testStream = StreamController<String>();

//   // Add data to stream...you can do this in the widget
//   // When we call bloc.email, it will return a Stream of String
//   Stream<String> get email => _email.stream.transform(validateEmail);
//   Stream<String> get password => _password.stream.transform(validatePassword);

//   //Side notes: If we did not to bring in validators from another file to use those methods
//   //we could have written the getters like this:
//   Stream<String> get testName => _testStream.stream
//           .transform(StreamTransformer.fromHandlers(handleData: (name, sink) {
//         if (name.length > 0) {
//           sink.add(name);
//         } else {
//           sink.addError('Name can not be empty');
//         }
//       }));

//   // Change data
//   // When we call bloc.changeEmail, we will return a Function that accepts a STring
//   Function(String) get changeEmail => _email.sink.add;
//   Function(String) get changePassword => _password.sink.add;
//   Function(String) get changeTestName => _testStream.sink.add;

//   dispose() {
//     _email
//         .close(); //because we opened up a stream on _email, we need to close it when needed.
//     _password.close();
//     _testStream.close();
//   }
// }

// // How to apply a bloc as a single source of data
// // We create an instance of the bloc at the end of the Bloc...
// final bloc = Bloc();







// USING SCOPED

//import async for SteamController
import 'dart:async';

import 'validators.dart';

// With this bloc, we are using some mixins (methods) that we created in the Validators Class
// We could have written the below line like this: class Bloc extends Validators{}
class Bloc extends Object with Validators {
  // Adding an underscore _ means the variable name will not be accessible outside of this class,
  // The underscore makes the variable private
  final _email =
      StreamController<String>(); //will only allow Strings to flow through
  final _password = StreamController<String>();
  final _testStream = StreamController<String>();

  // Add data to stream...you can do this in the widget
  // When we call bloc.email, it will return a Stream of String
  Stream<String> get email => _email.stream.transform(validateEmail);
  Stream<String> get password => _password.stream.transform(validatePassword);

  //Side notes: If we did not to bring in validators from another file to use those methods
  //we could have written the getters like this:
  Stream<String> get testName => _testStream.stream
          .transform(StreamTransformer.fromHandlers(handleData: (name, sink) {
        if (name.length > 0) {
          sink.add(name);
        } else {
          sink.addError('Name can not be empty');
        }
      }));

  // Change data
  // When we call bloc.changeEmail, we will return a Function that accepts a STring
  Function(String) get changeEmail => _email.sink.add;
  Function(String) get changePassword => _password.sink.add;
  Function(String) get changeTestName => _testStream.sink.add;

  dispose() {
    _email
        .close(); //because we opened up a stream on _email, we need to close it when needed.
    _password.close();
    _testStream.close();
  }
}

// How to apply a bloc as a single source of data
// We create an instance of the bloc at the end of the Bloc...
// final bloc = Bloc();