import 'package:flutter/material.dart';
import 'package:medappjp/components/buttonone.dart';
import 'package:medappjp/components/customized_field.dart';
import 'package:medappjp/src/home_page_screen.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      margin: EdgeInsets.only(left: 30, right: 30, top: 150),
      child: Column(
        children: [
          Image(
            image: AssetImage("assets/logo_info.png"),
          ),
          SizedBox(
            height: 80,
          ),
          Text(
            "Please Enter Your Mobile Number \nto Login/SignUp",
            style: TextStyle(fontSize: 16, color: Colors.grey),
          ),
          SizedBox(
            height: 33,
          ),
          CustomizedField(placeholder: "Enter Number"),
          SizedBox(
            height: 33,
          ),
          Button1(
            label: "CONTINUE",
            onPress: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => HomePage(),
                ),
              );
            },
          ),
        ],
      ),
    ));
  }
}
