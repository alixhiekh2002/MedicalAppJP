import 'package:flutter/material.dart';
import 'package:medappjp/components/buttonone.dart';
import 'package:medappjp/components/customized_field.dart';
import 'package:medappjp/src/home_page_screen.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController enterNumberControl = TextEditingController();

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
          Container(
            margin: EdgeInsets.only(top: 10),
            padding: EdgeInsets.only(left: 10),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                border:
                    Border.all(color: Color.fromARGB(255, 8, 8, 9), width: 1)),
            child: TextFormField(
              controller: enterNumberControl,
              keyboardType: TextInputType.number,
              cursorColor: Colors.black,
              style: const TextStyle(
                color: Color.fromARGB(159, 90, 88, 88),
                fontSize: 20,
              ),
              decoration: InputDecoration(
                  hintText: "Enter Verification",
                  hintStyle: const TextStyle(
                    color: Color(0xff8f8f9e),
                    fontSize: 15,
                  ),
                  border: InputBorder.none),
            ),
          ),
          SizedBox(
            height: 33,
          ),
          Button1(
            label: "CONTINUE",
            onPress: () {
              if (enterNumberControl.text.isEmpty) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("Please Enter Something"),
                  ),
                );
              } else {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => HomePage(
                      customerName: enterNumberControl.text,
                    ),
                  ),
                );
              }
            },
          ),
        ],
      ),
    ));
  }
}
