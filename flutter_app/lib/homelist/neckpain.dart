import 'package:flutter/material.dart';

import '../home.dart';

class NeckPain extends StatefulWidget {
  const NeckPain({Key? key}) : super(key: key);

  @override
  State<NeckPain> createState() => _NeckPainState();
}

class _NeckPainState extends State<NeckPain> {
  bool? valuea1 = false;
  bool? valuea2 = false;

  bool? valueb1 = false;
  bool? valueb2 = false;
  bool? valueb3 = false;
  bool? valueb4 = false;

  bool? valuec1 = false;
  bool? valuec2 = false;
  bool? valuec3 = false;

  List dis = [
    'Tension headache',
    'Cervical spondylosis',
    'Sprains',
    'Herniated disk',
    'Spinal stenosis',
  ];

  List result = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        centerTitle: true,
        title: Text('Neck Pain'),
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
                        "Pain started:",
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
                            "Gradually",
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
                            "Suddenly",
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
                            value: valueb2,
                            onChanged: (value) {
                              setState(() {
                                valueb2 = value;
                              });
                            },
                          ),
                          Text(
                            "Poor posture",
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
                            "Physical exertion",
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
                            "Stress",
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
                            "Muscle weakness",
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
                            "Headache",
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
                                  if (!result.contains('Tension headache')) {
                                    result.add('Tension headache');
                                  }
                                  if (!result
                                      .contains('Cervical spondylosis')) {
                                    result.add('Cervical spondylosis');
                                  }

                                  if (!result.contains('Herniated disk')) {
                                    result.add('Herniated disk');
                                  }
                                  if (!result.contains('Spinal stenosis')) {
                                    result.add('Spinal stenosis');
                                  }
                                }

                                if (valuea2 == true) {
                                  if (!result.contains('Tension headache')) {
                                    result.add('Tension headache');
                                  }

                                  if (!result.contains('Sprains')) {
                                    result.add('Sprains');
                                  }
                                  if (!result.contains('Herniated disk')) {
                                    result.add('Herniated disk');
                                  }
                                }

                                if (valueb1 == true) {
                                  if (!result.contains('Sprains')) {
                                    result.add('Sprains');
                                  }
                                }

                                if (valueb2 == true) {
                                  if (!result.contains('Tension headache')) {
                                    result.add('Tension headache');
                                  }
                                }
                                if (valueb3 == true) {
                                  if (!result.contains('Sprains')) {
                                    result.add('Sprains');
                                  }
                                }
                                if (valueb2 == true) {
                                  if (!result.contains('Tension headache')) {
                                    result.add('Tension headache');
                                  }
                                }

                                if (valuec1 == true) {
                                  if (!result
                                      .contains('Cervical spondylosis')) {
                                    result.add('Cervical spondylosis');
                                  }

                                  if (!result.contains('Spinal stenosis')) {
                                    result.add('Spinal stenosis');
                                  }
                                }

                                if (valuec2 == true) {
                                  if (!result.contains('Tension headache')) {
                                    result.add('Tension headache');
                                  }
                                  if (!result
                                      .contains('Cervical spondylosis')) {
                                    result.add('Cervical spondylosis');
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
