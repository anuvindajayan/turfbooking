import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:turfbooking/turfbookingapp/login_and_registeration/turf_register.dart';
import 'package:turfbooking/view/bottom_nav_screen.dart';



void main() {
  runApp(MaterialApp(
    home: Log_turf(),
  ));
}

class Log_turf extends StatefulWidget {
  @override
  State<Log_turf> createState() => _Log_turfState();
}

class _Log_turfState extends State<Log_turf> {
  bool showpassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          padding: EdgeInsets.only(
              bottom: MediaQuery
                  .of(context)
                  .viewInsets
                  .bottom + 50),
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0xFF388E3C), Color(0xFFFFFFFF)])),
          child: Padding(
            padding: const EdgeInsets.only(left: 22, top: 60.0),
            child: Text("Hello\n Login!",
                style: GoogleFonts.robotoMono(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 200),
          child: Container(
            decoration: BoxDecoration(
                color: Color(0xFFFFFFFF),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40))),
            height: 500,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.only(top: 35, left: 18.0, right: 18.0),
              child: Column(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                            label: Text(
                              "Email",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF388E3C)),
                            ),
                            suffixIcon: Icon(
                              Icons.person,
                              color: Colors.grey,
                            )),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      TextFormField(
                        obscureText: showpassword,
                        decoration: InputDecoration(
                            label: Text(
                              "Password",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF388E3C)),
                            ),
                            suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    if (showpassword == true) {
                                      showpassword = false;
                                    } else {
                                      showpassword = true;
                                    }
                                  });
                                },
                                icon: Icon(showpassword == true
                                    ? Icons.visibility_off
                                    : Icons.visibility))),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Bottom_Nav_Screen()));
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                          child: Container(
                            width: 350,
                            height: 40,
                            decoration: BoxDecoration(
                                border: Border(),
                                borderRadius: BorderRadius.circular(30),
                                gradient: LinearGradient(colors: [
                                  Color(0xFFBAFCAB),
                                  Color(0xFF388E3C),
                                ])),
                            child: Center(
                              child: Text(
                                "LOGIN",
                                style: GoogleFonts.robotoMono(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Turf_register()));
                          },
                          child: RichText(
                              text: TextSpan(
                                  style: TextStyle(color: Colors.black),
                                  children: [
                                    TextSpan(text: "Don't have an account?"),
                                    TextSpan(
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                        text: " SIGN UP")
                                  ])))
                    ],
                  ),
                ],
              ),
            ),
          ),
        )
      ]),
    );
  }
}
