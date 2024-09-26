import 'package:flutter/material.dart';

class MedicineSearch extends StatelessWidget {
  final String placeholder;

   MedicineSearch({required this.placeholder});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 23, left: 23),
      padding: EdgeInsets.only(left: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(offset: Offset(1, 2), color: Colors.grey),
        ],
      ),
      child: TextField(
        keyboardType: TextInputType.number,
        cursorColor: Colors.black,
        style: const TextStyle(
          color: Color.fromARGB(159, 90, 88, 88),
          fontSize: 15,
        ),
        decoration: InputDecoration(
            icon: Icon(
              Icons.search,
              size: 20,
            ),
            hintText: placeholder,
            hintStyle: const TextStyle(
              color: Color(0xff8f8f9e),
              fontSize: 12,
            ),
            border: InputBorder.none),
      ),
    );
  }
}
