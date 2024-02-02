import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:turfbooking/turfbookingapp/login_and_registeration/turf_login.dart';

void main() {
  runApp(MaterialApp(
    home: Turf_register(),
  ));
}

class Turf_register extends StatefulWidget {
  @override
  State<Turf_register> createState() => _Turf_registerState();
}

class _Turf_registerState extends State<Turf_register> {
  bool showpass = true;
  bool showpassword = true;
  var formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Stack(children: [
        Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0xFF388E3C), Color(0xFFFFFFFF)])),
          child: Padding(
            padding: const EdgeInsets.only(left: 22, top: 60.0),
            child: Text("Create Your\n Account",
                style: GoogleFonts.robotoMono(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 200),
          child: Form(
            key: formkey,
            child: Container(
              decoration: BoxDecoration(
                  color: Color(0xFFFFFFFF),
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(40),
                      bottomLeft: Radius.circular(40),
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40))),
              height: 600,
              width: double.infinity,
              child: Padding(
                padding:
                    const EdgeInsets.only(top: 35, left: 18.0, right: 18.0),
                child: SingleChildScrollView(
                  padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).viewInsets.bottom),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                            label: Text(
                              "Full Name",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF388E3C)),
                            ),
                            suffixIcon: Icon(
                              Icons.person,
                            )),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            label: Text(
                              "Email",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF388E3C)),
                            ),
                            suffixIcon: Icon(
                              Icons.email_outlined,
                            )),
                      ),
                      TextFormField(
                        initialValue: "+91 ",
                        decoration: InputDecoration(
                            label: Text(
                              "Phone Number",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF388E3C)),
                            ),
                            suffixIcon: Icon(
                              Icons.phone,
                            )),
                      ),
                      TextFormField(
                          obscureText: showpass,
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
                                      if (showpass == true) {
                                        showpass = false;
                                      } else {
                                        showpass = true;
                                      }
                                    });
                                  },
                                  icon: Icon(showpass == true
                                      ? Icons.visibility_off_sharp
                                      : Icons.visibility)))),
                      TextFormField(
                          obscureText: showpassword,
                          decoration: InputDecoration(
                              label: Text(
                                "Confirm Password",
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
                                      ? Icons.visibility_off_sharp
                                      : Icons.visibility)))),
                      SizedBox(
                        height: 30,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Log_turf()));
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
                                  Color(0xFFA4F69E),
                                  Color(0xFF388E3C),
                                ])),
                            child: Center(
                              child: Text(
                                "SIGN UP",
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
                                    builder: (context) => Log_turf()));
                          },
                          child: RichText(
                              text: TextSpan(
                                  style: TextStyle(color: Colors.black),
                                  children: [
                                TextSpan(
                                    text: "If you already have an account?"),
                                TextSpan(
                                    style: GoogleFonts.robotoMono(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                    text: " LOGIN")
                              ])))
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
