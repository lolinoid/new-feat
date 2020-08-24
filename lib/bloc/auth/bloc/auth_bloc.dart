import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:newfeat/service/auth/googlesigin.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  FirebaseAuth _auth;
  User user;

  AuthBloc()
      : _auth = FirebaseAuth.instance,
        super(AuthUnauthenticated());

  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    try {
      yield AuthAuthenticating();

      var signResult = await signInWithGoogle();
      if (signResult.user != null) {
        yield AuthAuthenticated();
      } else {
        yield AuthUnauthenticated();
      }
    } catch (e) {
      print(e);

      yield AuthUnauthenticated();
    }

    _auth.authStateChanges().listen((User user) {
      if (user == null) {
        print('User is currently signed out!');
      } else {
        print('User is signed in!');
      }
    });
  }
}
