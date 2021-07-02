import 'package:flutter/material.dart';
import 'constant.dart';

class OvalButton extends StatelessWidget {
  const OvalButton({
    Key? key,
    required this.primary,
    required this.text,
    required this.callback,
  }) : super(key: key);
  final bool primary;
  final String text;
  final Function() callback;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      width: size.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        // ignore: deprecated_member_use
        child: FlatButton(
          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
          onPressed: callback,
          color: primary ? kPrimaryColor : kPrimaryLightColor,
          child: Text(
            text,
            style: TextStyle(
                color: primary ? Colors.white : Colors.black,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
