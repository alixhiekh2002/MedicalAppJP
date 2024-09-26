import 'package:flutter/material.dart';

class CustomizedField extends StatelessWidget {
  final String placeholder;

  const CustomizedField({required this.placeholder});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      padding: EdgeInsets.only(left: 10),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Color.fromARGB(255, 8, 8, 9), width: 1)),
      child: TextFormField(
        keyboardType: TextInputType.number,
        cursorColor: Colors.black,
        style: const TextStyle(
          color: Color.fromARGB(159, 90, 88, 88),
          fontSize: 20,
        ),
        decoration: InputDecoration(
            hintText: placeholder,
            hintStyle: const TextStyle(
              color: Color(0xff8f8f9e),
              fontSize: 15,
            ),
            border: InputBorder.none),
      ),
    );
  }
}
