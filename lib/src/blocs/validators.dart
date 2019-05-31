import 'dart:async';

// Validator Mixin
class Validators {
  final validateEmail = StreamTransformer<String, String>.fromHandlers(
    handleData: (email, sink) {
      if(email.contains('@')) {
        sink.add(email);
      } else {
        sink.addError('Enter a valid email');
      }
    }
  );

  final validatePassword = StreamTransformer<String, String>.fromHandlers(
    handleData: (email, sink) {
      if(email.length > 4) {
        sink.add(email);
      } else {
        sink.addError('Password must be at least 4 characters');
      }
    }
  );
}