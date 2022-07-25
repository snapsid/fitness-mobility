import 'package:flutter/material.dart';
import 'package:flutter_app/home.dart';
import 'package:flutter_app/homelist/lowback.dart';

class Myresult extends StatefulWidget {
  const Myresult({Key? key}) : super(key: key);

  @override
  State<Myresult> createState() => _MyresultState();
}

class _MyresultState extends State<Myresult> {
  List res = MyHome.result1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        centerTitle: true,
        title: Text('Results'),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 20, right: 30, left: 30),
        child: Column(
          children: [
            Text(
                'These diseases and conditions match at least one of the factors you selected.',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            SizedBox(
              height: 30,
            ),
            ListView.builder(
              shrinkWrap: true,
              // controller: scrollcontorller,

              padding: EdgeInsets.only(bottom: 20),
              itemCount: res.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  child: Text(
                    res[index],
                    style: TextStyle(fontSize: 22),
                  ),
                );
              },
            )
          ],
        ),
      ),
      floatingActionButton: Material(
        borderRadius: BorderRadius.circular(20),
        color: Colors.teal,
        elevation: 5,
        child: MaterialButton(
          child: Text(
            'Request Appointment',
            style: TextStyle(color: Colors.white),
          ),
          onPressed: () {
            Navigator.pushNamed(context, 'appoin');
          },
          minWidth: 130,
        ),
      ),
    );
  }
}
