import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class My_profile extends StatelessWidget {
  const My_profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            width: 400,
            height: 300,
            child: Column(
              children: [
                Icon(
                  CupertinoIcons.profile_circled,
                  size: 200,
                ),
                Text("Change profile picture")
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(CupertinoIcons.profile_circled),
                  labelText: "Name",
                  border: OutlineInputBorder()),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email_outlined),
                  labelText: "Email",
                  border: OutlineInputBorder()),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.phone),
                  labelText: "Phone",
                  border: OutlineInputBorder()),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MaterialButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Cancel"),
              ),
              MaterialButton(
                onPressed: () {},
                child: Text("Save"),
                color: Colors.green,
              )
            ],
          )
        ],
      ),
    );
  }
}
