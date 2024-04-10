
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class My_profile extends StatefulWidget {
  @override
  State<My_profile> createState() => _My_profileState();
}

class _My_profileState extends State<My_profile> {
  final currentUser = FirebaseAuth.instance.currentUser;
  late CollectionReference _userCollection;

  @override
  void initState() {
    _userCollection = FirebaseFirestore.instance.collection("users");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text(
            "My Profile",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Container(
            //   alignment: Alignment.center,
            //   width: 400,
            //   height: 300,
            //   child: Column(
            //     children: [
            //       CircleAvatar(
            //         radius: 100,
            //         backgroundImage: NetworkImage(
            //           currentUser?.photoURL ??
            //               'https://via.placeholder.com/150',
            //         ),
            //       ),
            //       Text("Change profile picture"),
            //     ],
            //   ),
            // ),
            StreamBuilder<QuerySnapshot>(
              stream: getUser(),
              builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                if (snapshot.hasError) {
                  return Text("Error ${snapshot.error}");
                }
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(child: CircularProgressIndicator());
                }
                final users = snapshot.data!.docs;
                final userData = users.firstWhere(
                  (user) => user['email'] == currentUser!.email,
                );
                if (userData == null) {
                  return Text("User data not found");
                }
                final userId = userData.id;
                final userName = userData['name'];
                final userEmail = userData['email'];
                final userPhone = userData['phone'];
                return Expanded(
                  child: ListView(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Card(
                          child: ListTile(
                            shape: Border.symmetric(),
                            leading: Icon(
                              Icons.person,
                            ),
                            title: Text(userName),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Card(
                          child: ListTile(
                            shape: Border.symmetric(),
                            leading: Icon(
                              Icons.email,
                            ),
                            title: Text(userEmail),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Card(
                          child: ListTile(
                            shape: Border.symmetric(),
                            leading: Icon(
                              Icons.phone,
                            ),
                            title: Text(userPhone),
                          ),
                        ),
                      ),
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.center,
                      //   children: [
                      //     MaterialButton(
                      //       onPressed: () {
                      //         Navigator.pop(context);
                      //       },
                      //       child: Text("Cancel"),
                      //     ),
                      //     MaterialButton(
                      //       onPressed: () {},
                      //       child: Text("Save"),
                      //       color: Colors.green,
                      //     ),
                      //   ],
                      // ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Stream<QuerySnapshot<Object?>> getUser() {
    return _userCollection.snapshots();
  }
}
