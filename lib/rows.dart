import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  final String text;
  final Color color;
  final Color colorText;
  final void Function()? onPressed;

  const MyWidget(
      {super.key,
      required this.text,
      required this.color,
      required this.colorText,
      this.onPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      child: Container(
        height: 70,
        width: 70,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(35),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                color: colorText, fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
