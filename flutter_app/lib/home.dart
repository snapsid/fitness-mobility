import 'package:flutter/material.dart';

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  static List result1 = [];

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    typeDis(title, route) {
      return GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, route);
        },
        child: Container(
          width: MediaQuery.of(context).size.width * 0.9,
          height: 110,
          child: Card(
            shadowColor: Colors.teal,
            surfaceTintColor: Colors.teal,
            color: Colors.teal.shade100,
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                        color: Colors.teal,
                        fontSize: 26,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
            // color: Color(0xff262628),
          ),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        centerTitle: true,
        title: Text('Home'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Container(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                typeDis('Low back pain', 'lowback'),
                typeDis('Hip pain', 'hip'),
                typeDis('Knee pain', 'knee'),
                typeDis('Shoulder pain', 'shoulder'),
                typeDis('Foot pain', 'foot'),
                typeDis('Neck pain', 'neck'),
                typeDis('Pelvic pain', 'pelvic'),
                SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
