import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  const Buttons(
      {Key? key,
      required this.buttonText,
      this.color,
      this.textColor,
      this.buttonTapped})
      : super(key: key);

  final color;
  final textColor;
  final String buttonText;
  final buttonTapped;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: buttonTapped,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              color: color,
              child: Center(
                child: Text(buttonText,
                    style: TextStyle(color: textColor, fontSize: 20)),
              ),
            )),
      ),
    );
  }
}
