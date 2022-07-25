import 'package:flutter/material.dart';

class Appoint extends StatefulWidget {
  const Appoint({Key? key}) : super(key: key);

  @override
  State<Appoint> createState() => _AppointState();
}

class _AppointState extends State<Appoint> {
  @override
  Widget build(BuildContext context) {
    myAp(name, status, price) {
      return Card(
        child: Container(
          alignment: Alignment.center,
          height: 200,
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                status,
                style: TextStyle(color: Colors.teal, fontSize: 18),
              ),
              SizedBox(
                height: 10,
              ),
              Text(name,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              SizedBox(
                height: 10,
              ),
              Text(price,
                  style: TextStyle(
                    fontSize: 18,
                  )),
              SizedBox(
                height: 10,
              ),
              Material(
                borderRadius: BorderRadius.circular(20),
                color: Colors.teal,
                elevation: 5,
                child: MaterialButton(
                  child: Text(
                    'Book Now',
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {},
                  minWidth: 130,
                ),
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        centerTitle: true,
        title: Text('Request Appointment'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Container(
            alignment: Alignment.center,
            child: Column(
              children: [
                myAp('Dr Maya', 'Available Now', 'Rs 100'),
                myAp('Dr Shweta', 'Available Now', 'Rs 500'),
                myAp('Dr Vishal', 'Available at 4PM', 'Rs 300'),
                myAp('Dr Suresh', 'Available at 8PM', 'Rs 200'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
