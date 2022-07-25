import 'package:flutter/material.dart';

import '../home.dart';

class ShoulderPain extends StatefulWidget {
  const ShoulderPain({Key? key}) : super(key: key);

  @override
  State<ShoulderPain> createState() => _ShoulderPainState();
}

class _ShoulderPainState extends State<ShoulderPain> {
  bool? valuea1 = false;
  bool? valuea2 = false;

  bool? valueb1 = false;
  bool? valueb2 = false;

  bool? valuec1 = false;
  bool? valuec2 = false;
  bool? valuec3 = false;
  bool? valuec4 = false;

  List dis = [
    'Osteoarthritis',
    'Bursitis',
    'Rotator cuff injury',
    'Dislocated shoulder',
    'Tendinitis',
  ];

  List result = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        centerTitle: true,
        title: Text('Shoulder Pain'),
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
                            "Sharp or severe",
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
                        "Onset is:",
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
                            "Gradual",
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
                            "Sudden",
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
                            value: valuec1,
                            onChanged: (value) {
                              setState(() {
                                valuec1 = value;
                              });
                            },
                          ),
                          Text(
                            "Everyday activities",
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
                            "Overuse or exertion",
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
                            "Injury",
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),

                      Row(
                        children: [
                          Checkbox(
                            value: valuec4,
                            onChanged: (value) {
                              setState(() {
                                valuec4 = value;
                              });
                            },
                          ),
                          Text(
                            "Rest or inactivity",
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
                                  if (!result.contains('Osteoarthritis')) {
                                    result.add('Osteoarthritis');
                                  }
                                  if (!result.contains('Bursitis')) {
                                    result.add('Bursitis');
                                  }
                                  if (!result.contains('Rotator cuff injury')) {
                                    result.add('Rotator cuff injury');
                                  }

                                  if (!result.contains('Tendinitis')) {
                                    result.add('Tendinitis');
                                  }
                                }

                                if (valuea2 == true) {
                                  if (!result.contains('Osteoarthritis')) {
                                    result.add('Osteoarthritis');
                                  }

                                  if (!result.contains('Rotator cuff injury')) {
                                    result.add('Rotator cuff injury');
                                  }
                                  if (!result.contains('Dislocated shoulder')) {
                                    result.add('Dislocated shoulder');
                                  }
                                }

                                if (valueb1 == true) {
                                  if (!result.contains('Osteoarthritis')) {
                                    result.add('Osteoarthritis');
                                  }
                                  if (!result.contains('Bursitis')) {
                                    result.add('Bursitis');
                                  }
                                }

                                if (valueb2 == true) {
                                  if (!result.contains('Bursitis')) {
                                    result.add('Bursitis');
                                  }

                                  if (!result.contains('Dislocated shoulder')) {
                                    result.add('Dislocated shoulder');
                                  }
                                }

                                if (valuec1 == true) {
                                  if (!result.contains('Osteoarthritis')) {
                                    result.add('Osteoarthritis');
                                  }

                                  if (!result.contains('Rotator cuff injury')) {
                                    result.add('Rotator cuff injury');
                                  }

                                  if (!result.contains('Tendinitis')) {
                                    result.add('Tendinitis');
                                  }
                                }

                                if (valuec2 == true) {
                                  if (!result.contains('Osteoarthritis')) {
                                    result.add('Osteoarthritis');
                                  }
                                  if (!result.contains('Bursitis')) {
                                    result.add('Bursitis');
                                  }
                                  if (!result.contains('Rotator cuff injury')) {
                                    result.add('Rotator cuff injury');
                                  }
                                }
                                if (valuec3 == true) {
                                  if (!result.contains('Bursitis')) {
                                    result.add('Bursitis');
                                  }
                                  if (!result.contains('Rotator cuff injury')) {
                                    result.add('Rotator cuff injury');
                                  }
                                  if (!result.contains('Dislocated shoulder')) {
                                    result.add('Dislocated shoulder');
                                  }
                                }

                                if (valuec4 == true) {
                                  if (!result.contains('Osteoarthritis')) {
                                    result.add('Osteoarthritis');
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
