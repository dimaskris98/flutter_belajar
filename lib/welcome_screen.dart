import 'package:flutter/material.dart';
import 'utils/widget.dart';
import 'login.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue, Colors.teal],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 100),
                child: Image(
                  image: AssetImage("images/akhlak.png"),
                ),
              ),
              OvalButton(
                  primary: true,
                  text: "LOGIN",
                  callback: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Login()),
                    );
                  }),
              OvalButton(primary: false, text: "SIGNUP", callback: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
