import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class My_profile extends StatefulWidget {
  @override
  State<My_profile> createState() => _My_profileState();
}

class _My_profileState extends State<My_profile> {
  late CollectionReference _userCollection;
  final currentUser = FirebaseAuth.instance.currentUser;
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  @override
  void initState() {
    _userCollection = FirebaseFirestore.instance.collection("users");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
            StreamBuilder<QuerySnapshot>(
                stream: getUser(),
                builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                  if (snapshot.hasError) {
                    return Text("Error ${snapshot.error}");
                  }
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const CircularProgressIndicator();
                  }
                  final users = snapshot.data!.docs;
                  return Expanded(
                      child: ListView.builder(
                          itemCount: users.length,
                          itemBuilder: (context, index) {
                            final user = users[index];
                            final userId = user.id;
                            final userName = user['name'];
                            final userEmail = user['email'];
                            final userPhone = user["phone"];
                            print(userId);
                            return Column(children: [
                              Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Card(
                                    child: ListTile(
                                      shape: Border.symmetric(),
                                      leading: Icon(
                                        CupertinoIcons.profile_circled,
                                      ),
                                      title: Text(currentUser!.uid),
                                    ),
                                  )),
                              Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Card(
                                    child: ListTile(
                                      shape: Border.symmetric(),
                                      leading: Icon(
                                        CupertinoIcons.profile_circled,
                                      ),
                                      title: Text("$userEmail"),
                                    ),
                                  )),
                              Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Card(
                                    child: ListTile(
                                      shape: Border.symmetric(),
                                      leading: Icon(
                                        CupertinoIcons.profile_circled,
                                      ),
                                      title: Text("$userPhone"),
                                    ),
                                  )),
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
                              ),
                            ]);
                          }));
                })
          ],
        ),
      ),
    );
  }

  Stream<QuerySnapshot<Object?>> getUser() {
    return _userCollection.snapshots();
  }
}
