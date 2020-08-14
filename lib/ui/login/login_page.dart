import 'package:flutter/material.dart';
import 'package:newfeat/ui/core/home_page.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset('images/login.jpg'),
          btnLogin(context),
        ],
      ),
    ));
  }

  Widget btnLogin(ctx) {
    return MaterialButton(
      onPressed: () {
        Navigator.pushReplacement(
            ctx, MaterialPageRoute(builder: (_) => HomePage()));
      },
      child: Text('Login'),
    );
  }
}
