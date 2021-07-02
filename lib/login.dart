import 'package:flutter/material.dart';
import 'package:flutter_project/utils/widget.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'utils/constant.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: size.height,
          margin: EdgeInsets.all(10),
          child: Center(
            child: Form(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    "images/welcome.svg",
                    height: size.height * 0.35,
                  ),
                  RoundedInputField(
                    hint: "Username",
                    icon: Icons.person,
                    onValueChanged: (value) {},
                  ),
                  RoundedInputField(
                    hint: "Password",
                    icon: Icons.lock,
                    onValueChanged: (value) {},
                  ),
                  OvalButton(
                    primary: true,
                    text: "LOGIN",
                    callback: () {},
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class RoundedInputField extends StatelessWidget {
  final String hint;
  final IconData icon;
  final ValueChanged<String> onValueChanged;
  const RoundedInputField({
    Key? key,
    required this.hint,
    required this.icon,
    required this.onValueChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        decoration: InputDecoration(
            icon: Icon(icon), hintText: hint, border: InputBorder.none),
      ),
    );
  }
}

class TextFieldContainer extends StatelessWidget {
  final Widget child;
  const TextFieldContainer({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: MediaQuery.of(context).size.width * 0.8,
      decoration: BoxDecoration(
        color: kPrimaryLightColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: child,
    );
  }
}
