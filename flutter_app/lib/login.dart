import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class MyLogin extends StatelessWidget {
  const MyLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String email = '', pass = '';
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        centerTitle: true,
        title: Text("Login"),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.only(left: 30, right: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Login to continue',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                onChanged: (value) {
                  email = value;
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
              TextField(
                onChanged: (value) {
                  pass = value;
                },
                obscureText: true,
                decoration: InputDecoration(
                    filled: true,
                    hintText: "Password: ",
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
                    'Login',
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () async {
                    try {
                      UserCredential userCredential = await FirebaseAuth
                          .instance
                          .signInWithEmailAndPassword(
                              email: email, password: pass);
                      Navigator.pushNamed(context, 'home');
                    } on FirebaseAuthException catch (e) {
                      if (e.code == 'user-not-found') {
                        print('No user found for that email.');
                      } else if (e.code == 'wrong-password') {
                        print('Wrong password provided for that user.');
                      }
                    }
                  },
                  minWidth: 130,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Expanded(child: Container()),
                  TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "forget");
                      },
                      child: Text(
                        "Forgot Password",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
