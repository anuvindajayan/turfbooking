
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:turfbooking/presentation/registration_screen/controller/password_visible.dart';
import 'package:turfbooking/presentation/loginscreen/view/turf_login.dart';
import '../../../respository/Firebase_helper/firebase_helper.dart';

class Turf_register extends StatefulWidget {
  @override
  State<Turf_register> createState() => _Turf_registerState();
}

class _Turf_registerState extends State<Turf_register> {
  var formkey = GlobalKey<FormState>();

  var name_controller = TextEditingController();

  var email_controller = TextEditingController();

  var phone_controller = TextEditingController();

  var pass_controller = TextEditingController();

  late CollectionReference _userCollection;
@override
  void initState() {
    _userCollection =FirebaseFirestore.instance.collection("users");
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    PasswordVisibleController provider = Provider.of<PasswordVisibleController>(
        context);
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
                      bottom: MediaQuery
                          .of(context)
                          .viewInsets
                          .bottom),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextFormField(controller: name_controller,
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
                      TextFormField(controller: email_controller,
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
                      TextFormField(controller: phone_controller,
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
                      TextFormField(controller: pass_controller,
                          obscureText: provider.visible2,
                          decoration: InputDecoration(
                              label: Text(
                                "Password",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF388E3C)),
                              ),
                              suffixIcon: IconButton(
                                  onPressed: () {
                                    provider.TapVisible2();
                                  },
                                  icon: Icon(provider.visible2 == true
                                      ? Icons.visibility_off_sharp
                                      : Icons.visibility)))),
                      TextFormField(
                          obscureText: provider.visible3,
                          decoration: InputDecoration(
                              label: Text(
                                "Confirm Password",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF388E3C)),
                              ),
                              suffixIcon: IconButton(
                                  onPressed: () {
                                    provider.TapVisible3();
                                  },
                                  icon: Icon(provider.visible3
                                      ? Icons.visibility_off_sharp
                                      : Icons.visibility)))),
                      SizedBox(
                        height: 30,
                      ),
                      GestureDetector(
                        onTap: () {
                           registeruser();
                          String email = email_controller.text.trim();
                          String pass = pass_controller.text.trim();

                          FireBaseHelper()
                              .registerUser(email: email, pwd: pass)
                              .then((result) {
                            if (result == null) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Log_turf()));
                            } else {
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(SnackBar(content: Text(result)));
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

  Future <void> registeruser() async {
    return _userCollection.add(
        {
          "name": name_controller.text,
          "email": email_controller.text,
          "phone": phone_controller.text
        }).then((value) {
      print("user add successsfuly");
    }).catchError((error) {
      print("failed to add user $error");
    });
  }
 }
