import 'package:flutter/material.dart';
import 'package:newfeat/ui/core/home_page.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Stack(
      children: [
        Positioned(
          child: Image.asset(
            'images/pintucrop.gif',
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.fitHeight,
          ),
          bottom: 0,
          right: -30,
        ),
        Positioned(
          child: Column(
            children: [
              IconButton(
                  iconSize: 150,
                  icon: Image.asset('images/login.png'),
                  onPressed: null),
              btnLogin(context),
            ],
          ),
          right: 60,
          top: 120,
        ),
      ],
    )));
  }

  Widget btnLogin(ctx) {
    return MaterialButton(
      color: Colors.red,
      onPressed: () {
        Navigator.pushReplacement(
            ctx, MaterialPageRoute(builder: (_) => HomePage()));
      },
      child: Text(
        'Sign in With Google',
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
