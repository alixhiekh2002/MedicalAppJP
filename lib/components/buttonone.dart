import 'package:flutter/material.dart';

class Button1 extends StatelessWidget {
  final String label;
  final GestureDragCancelCallback onPress;

  Button1({required this.label, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
                color: Color(0xff4157ff),
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: Color(0xff5d5d67), width: 1)),
            child: GestureDetector(
              onTap: onPress,
              child: Text(
                label,
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
