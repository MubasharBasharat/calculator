import 'package:calculator/constant.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String buttonName;
  final Color buttonColor;
  final VoidCallback onpress;

  const MyButton(
      {super.key,
      required this.buttonName,
      this.buttonColor = const Color(0xffa5a5a5),
      required this.onpress});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: InkWell(
          onTap: onpress,
          child: Container(
            height: 65,
            child: Center(
              child: Text(
                buttonName,
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ),
            decoration: BoxDecoration(
                color: buttonColor,
                // borderRadius: BorderRadius.circular(100),
                shape: BoxShape.circle),
          ),
        ),
      ),
    );
  }
}
