import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:turfbooking/controller/password_visible.dart';
import 'package:turfbooking/view/bottom_nav_screen.dart';
import 'package:turfbooking/presentation/registration_screen/view/turf_register.dart';
import '../../../modal/firebase_auth_function.dart';
class Log_turf extends StatefulWidget {
  @override
  State<Log_turf> createState() => _Log_turfState();
}
class _Log_turfState extends State<Log_turf> {
  var email_controller = TextEditingController();
  var pass_controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom + 50),
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
          padding: const EdgeInsets.only(top: 170),
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
                        controller:email_controller,
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
                      Consumer<PasswordVisibleController>(
                          builder: (context, PasswordVisibleController, child) {
                        return TextFormField(
                          controller: pass_controller,
                          obscureText: PasswordVisibleController.visible,
                          decoration: InputDecoration(
                              label: Text(
                                "Password",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF388E3C)),
                              ),
                              suffixIcon: IconButton(
                                  onPressed: () {
                                    PasswordVisibleController.TapVisible();
                                  },
                                  icon: Icon(PasswordVisibleController.visible
                                      ? Icons.visibility_off_sharp
                                      : Icons.visibility))),
                        );
                      }),
                      SizedBox(
                        height: 30,
                      ),
                      GestureDetector(
                        onTap: () {
                           String email = email_controller.text.trim();
                           String pass = pass_controller.text.trim();

                            FireBaseHelper()
                                .loginUser(email1: email, pwd: pass)
                                .then((result) {if (result == null) {
                               Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => Bottom_Nav_Screen()));
                             } else {
                                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                    backgroundColor: Colors.red, content: Text(result)));
                              }
                           });
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
