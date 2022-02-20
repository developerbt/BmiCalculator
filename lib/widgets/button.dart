import 'package:flutter/material.dart';
import 'package:tamrin4/constants.dart';

// ignore: must_be_immutable
class Button extends StatelessWidget {
  String text;
  final onTapped;
  Button({
    required this.text,
    required this.onTapped,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: kPinkColor,
      child: InkWell(
        onTap: onTapped,
        borderRadius: BorderRadius.circular(4),
        child: Container(
            height: 55,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
            ),
            child: Center(
              child: Text(
                text,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )),
      ),
    );
  }
}
