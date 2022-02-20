// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class CircleContainer extends StatelessWidget {
  String text;
  final onTapped;
  CircleContainer({
    required this.text,
    required this.onTapped,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTapped,
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Color.fromRGBO(255, 255, 255, 0.1),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}
