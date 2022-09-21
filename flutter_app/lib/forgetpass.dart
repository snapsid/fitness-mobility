import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ForgetPass extends StatefulWidget {
  const ForgetPass({Key? key}) : super(key: key);

  @override
  State<ForgetPass> createState() => _ForgetPassState();
}

class _ForgetPassState extends State<ForgetPass> {
  var email1 = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Reset Password"),
        backgroundColor: Colors.teal,
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.only(left: 20, right: 20),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            TextField(
              onChanged: (value) {
                email1 = value;
              },
              decoration: InputDecoration(
                  filled: true,
                  hintText: "Email: ",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  )),
            ),
            SizedBox(
              height: 20,
            ),
            Material(
              borderRadius: BorderRadius.circular(20),
              color: Colors.teal,
              elevation: 5,
              child: MaterialButton(
                child: Text(
                  'Reset Password',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () async {
                  try {
                    await FirebaseAuth.instance
                        .sendPasswordResetEmail(email: email1);
                    showDialog(
                        context: context,
                        builder: (context) {
                          return StatefulBuilder(builder: (context, setState) {
                            return AlertDialog(
                              title: Text('Success!'),
                              content: Text(
                                  "Password reset instructions have been sent to email!"),
                              actions: [
                                TextButton(
                                    onPressed: () {
                                      setState(() {});

                                      Navigator.pop(context);
                                    },
                                    child: Text(
                                      'OK',
                                      style: TextStyle(color: Colors.teal),
                                    )),
                              ],
                            );
                          });
                        });
                  } catch (e) {
                    print("error $e");
                  }
                },
                minWidth: 130,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
