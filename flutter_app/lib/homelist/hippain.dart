import 'package:flutter/material.dart';
import 'package:flutter_app/home.dart';

class HipPain extends StatefulWidget {
  const HipPain({Key? key}) : super(key: key);

  @override
  State<HipPain> createState() => _HipPainState();
}

class _HipPainState extends State<HipPain> {
  bool? valuea1 = false;
  bool? valuea2 = false;
  bool? valuea3 = false;

  bool? valueb1 = false;
  bool? valueb2 = false;
  bool? valueb3 = false;
  bool? valueb4 = false;
  bool? valueb5 = false;

  bool? valuec1 = false;
  bool? valuec2 = false;
  bool? valuec3 = false;

  List dis = [
    'Hip labral tear',
    'Bursitis',
    'Osteoarthritis',
    'Tendinitis',
  ];

  List result = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        centerTitle: true,
        title: Text('Hip Pain'),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(left: 30, right: 30, top: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Pain is:",
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 10),

                      //SizedBox

                      Row(
                        children: [
                          Checkbox(
                            value: valuea1,
                            onChanged: (value) {
                              setState(() {
                                valuea1 = value;
                              });
                            },
                          ),
                          Text(
                            "Dull or achy",
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Checkbox(
                            value: valuea2,
                            onChanged: (value) {
                              setState(() {
                                valuea2 = value;
                              });
                            },
                          ),
                          Text(
                            "Located in the groin",
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),

                      Row(
                        children: [
                          Checkbox(
                            value: valuea3,
                            onChanged: (value) {
                              setState(() {
                                valuea3 = value;
                              });
                            },
                          ),
                          Text(
                            "Sudden and intense",
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Triggered or worsened by:",
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 10),

                      //SizedBox

                      Row(
                        children: [
                          Checkbox(
                            value: valueb1,
                            onChanged: (value) {
                              setState(() {
                                valueb1 = value;
                              });
                            },
                          ),
                          Text(
                            "Activity or overuse",
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Checkbox(
                            value: valueb2,
                            onChanged: (value) {
                              setState(() {
                                valueb2 = value;
                              });
                            },
                          ),
                          Text(
                            "Long periods of rest",
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Checkbox(
                            value: valueb3,
                            onChanged: (value) {
                              setState(() {
                                valueb3 = value;
                              });
                            },
                          ),
                          Text(
                            "Movement",
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Checkbox(
                            value: valueb4,
                            onChanged: (value) {
                              setState(() {
                                valueb4 = value;
                              });
                            },
                          ),
                          Text(
                            "Overuse",
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Checkbox(
                            value: valueb5,
                            onChanged: (value) {
                              setState(() {
                                valueb5 = value;
                              });
                            },
                          ),
                          Text(
                            "Injury",
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Accompanied by:",
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 10),

                      //SizedBox

                      Row(
                        children: [
                          Checkbox(
                            value: valuec1,
                            onChanged: (value) {
                              setState(() {
                                valuec1 = value;
                              });
                            },
                          ),
                          Text(
                            "Stiffness",
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Checkbox(
                            value: valuec2,
                            onChanged: (value) {
                              setState(() {
                                valuec2 = value;
                              });
                            },
                          ),
                          Text(
                            "Swelling",
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Checkbox(
                            value: valuec3,
                            onChanged: (value) {
                              setState(() {
                                valuec3 = value;
                              });
                            },
                          ),
                          Text(
                            "Locking or catching",
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Material(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.teal,
                            elevation: 5,
                            child: MaterialButton(
                              child: Text(
                                'Submit',
                                style: TextStyle(color: Colors.white),
                              ),
                              onPressed: () {
                                result = [];
                                if (valuea1 == true) {
                                  if (!result.contains('Hip labral tear')) {
                                    result.add('Hip labral tear');
                                  }
                                  if (!result.contains('Bursitis')) {
                                    result.add('Bursitis');
                                  }
                                  if (!result.contains('Tendinitis')) {
                                    result.add('Tendinitis');
                                  }
                                }

                                if (valuea2 == true) {
                                  if (!result.contains('Hip labral tear')) {
                                    result.add('Hip labral tear');
                                  }
                                }

                                if (valuea3 == true) {
                                  if (!result.contains('Hip labral tear')) {
                                    result.add('Hip labral tear');
                                  }
                                }

                                if (valueb1 == true) {
                                  if (!result.contains('Hip labral tear')) {
                                    result.add('Hip labral tear');
                                  }
                                }

                                if (valueb2 == true) {
                                  if (!result.contains('Osteoarthritis')) {
                                    result.add('Osteoarthritis');
                                  }
                                  if (!result.contains('Bursitis')) {
                                    result.add('Bursitis');
                                  }
                                  if (!result.contains('Tendinitis')) {
                                    result.add('Tendinitis');
                                  }
                                }
                                if (valueb3 == true) {
                                  if (!result.contains('Bursitis')) {
                                    result.add('Bursitis');
                                  }
                                  if (!result.contains('Tendinitis')) {
                                    result.add('Tendinitis');
                                  }
                                }
                                if (valueb4 == true) {
                                  if (!result.contains('Osteoarthritis')) {
                                    result.add('Osteoarthritis');
                                  }
                                  if (!result.contains('Bursitis')) {
                                    result.add('Bursitis');
                                  }
                                  if (!result.contains('Tendinitis')) {
                                    result.add('Tendinitis');
                                  }
                                }
                                if (valueb5 == true) {
                                  if (!result.contains('Hip labral tear')) {
                                    result.add('Hip labral tear');
                                  }
                                  if (!result.contains('Bursitis')) {
                                    result.add('Bursitis');
                                  }
                                  if (!result.contains('Tendinitis')) {
                                    result.add('Tendinitis');
                                  }
                                }

                                if (valuec1 == true) {
                                  if (!result.contains('Hip labral tear')) {
                                    result.add('Hip labral tear');
                                  }
                                  if (!result.contains('Bursitis')) {
                                    result.add('Bursitis');
                                  }
                                  if (!result.contains('Osteoarthritis')) {
                                    result.add('Osteoarthritis');
                                  }
                                }

                                if (valuec2 == true) {
                                  if (!result.contains('Bursitis')) {
                                    result.add('Bursitis');
                                  }
                                  if (!result.contains('Osteoarthritis')) {
                                    result.add('Osteoarthritis');
                                  }
                                }
                                if (valuec3 == true) {
                                  if (!result.contains('Hip labral tear')) {
                                    result.add('Hip labral tear');
                                  }
                                }

                                print(result);

                                MyHome.result1 = result;

                                Navigator.pushNamed(context, 'result');
                              },
                              minWidth: 130,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
