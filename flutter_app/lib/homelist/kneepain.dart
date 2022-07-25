import 'package:flutter/material.dart';

import '../home.dart';

class KneePain extends StatefulWidget {
  const KneePain({Key? key}) : super(key: key);

  @override
  State<KneePain> createState() => _KneePainState();
}

class _KneePainState extends State<KneePain> {
  bool? valuea1 = false;
  bool? valuea2 = false;
  bool? valuea3 = false;
  bool? valuea4 = false;
  bool? valuea5 = false;

  bool? valueb1 = false;
  bool? valueb2 = false;
  bool? valueb3 = false;

  bool? valuec1 = false;
  bool? valuec2 = false;
  bool? valuec3 = false;

  List dis = [
    'Knee bursitis',
    'Osteoarthritis',
    "Baker's cyst",
    'Patellar tendinitis',
    'Patellofemoral pain syndrome'
        'Sprains',
    'ACL injury'
        'Torn meniscus',
    'Osteochondritis dissecans'
  ];

  List result = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        centerTitle: true,
        title: Text('Knee Pain'),
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
                        "Pain best described as:",
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
                            "Gradually worsening",
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Checkbox(
                            value: valuea4,
                            onChanged: (value) {
                              setState(() {
                                valuea4 = value;
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
                      Row(
                        children: [
                          Checkbox(
                            value: valuea5,
                            onChanged: (value) {
                              setState(() {
                                valuea5 = value;
                              });
                            },
                          ),
                          Text(
                            "Persistent",
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
                        "Located:",
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
                            "Behind the knee",
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
                            "Around the kneecap",
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
                            "In the knee joint",
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
                        "Triggered by:",
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
                                  if (!result.contains('Knee bursitis')) {
                                    result.add('Knee bursitis');
                                  }
                                  if (!result.contains('Osteoarthritis')) {
                                    result.add('Osteoarthritis');
                                  }
                                  if (!result.contains("Baker's cyst")) {
                                    result.add("Baker's cyst");
                                  }
                                  if (!result.contains('Patellar tendinitis')) {
                                    result.add('Patellar tendinitis');
                                  }
                                  if (!result.contains(
                                      'Patellofemoral pain syndrome')) {
                                    result.add('Patellofemoral pain syndrome');
                                  }
                                }

                                if (valuea2 == true) {
                                  if (!result.contains('Osteoarthritis')) {
                                    result.add('Osteoarthritis');
                                  }

                                  if (!result.contains('Patellar tendinitis')) {
                                    result.add('Patellar tendinitis');
                                  }
                                  if (!result.contains('ACL injury')) {
                                    result.add('ACL injury');
                                  }
                                  if (!result.contains('Sprains')) {
                                    result.add('Sprains');
                                  }
                                  if (!result.contains('Torn meniscus')) {
                                    result.add('Torn meniscus');
                                  }
                                }

                                if (valuea3 == true) {
                                  if (!result.contains('Knee bursitis')) {
                                    result.add('Knee bursitis');
                                  }
                                  if (!result.contains("Baker's cyst")) {
                                    result.add("Baker's cyst");
                                  }
                                  if (!result.contains('Torn meniscus')) {
                                    result.add('Torn meniscus');
                                  }
                                }
                                if (valuea4 == true) {
                                  if (!result.contains('ACL injury')) {
                                    result.add('ACL injury');
                                  }
                                  if (!result.contains('Sprains')) {
                                    result.add('Sprains');
                                  }
                                  if (!result.contains('Torn meniscus')) {
                                    result.add('Torn meniscus');
                                  }
                                }
                                if (valuea1 == true) {
                                  if (!result
                                      .contains('Osteochondritis dissecans')) {
                                    result.add('Osteochondritis dissecans');
                                  }
                                }

                                if (valueb1 == true) {
                                  if (!result.contains("Baker's cyst")) {
                                    result.add("Baker's cyst");
                                  }
                                }

                                if (valueb2 == true) {
                                  if (!result.contains('Knee bursitis')) {
                                    result.add('Knee bursitis');
                                  }

                                  if (!result.contains('Patellar tendinitis')) {
                                    result.add('Patellar tendinitis');
                                  }
                                  if (!result.contains(
                                      'Patellofemoral pain syndrome')) {
                                    result.add('Patellofemoral pain syndrome');
                                  }
                                }
                                if (valueb3 == true) {
                                  if (!result.contains('Osteoarthritis')) {
                                    result.add('Osteoarthritis');
                                  }
                                  if (!result.contains("Sprains")) {
                                    result.add("Sprains");
                                  }
                                  if (!result.contains('ACL injury')) {
                                    result.add('ACL injury');
                                  }
                                }

                                if (valuec1 == true) {
                                  if (!result.contains('Knee bursitis')) {
                                    result.add('Knee bursitis');
                                  }
                                  if (!result.contains('Osteoarthritis')) {
                                    result.add('Osteoarthritis');
                                  }
                                  if (!result.contains("Baker's cyst")) {
                                    result.add("Baker's cyst");
                                  }
                                  if (!result.contains('Patellar tendinitis')) {
                                    result.add('Patellar tendinitis');
                                  }
                                  if (!result.contains(
                                      'Patellofemoral pain syndrome')) {
                                    result.add('Patellofemoral pain syndrome');
                                  }
                                }

                                if (valuec2 == true) {
                                  if (!result.contains('Knee bursitis')) {
                                    result.add('Knee bursitis');
                                  }
                                  if (!result.contains('Osteoarthritis')) {
                                    result.add('Osteoarthritis');
                                  }
                                  if (!result.contains("Baker's cyst")) {
                                    result.add("Baker's cyst");
                                  }
                                  if (!result.contains('Patellar tendinitis')) {
                                    result.add('Patellar tendinitis');
                                  }
                                  if (!result.contains(
                                      'Patellofemoral pain syndrome')) {
                                    result.add('Patellofemoral pain syndrome');
                                  }
                                  if (!result.contains('ACL injury')) {
                                    result.add('ACL injury');
                                  }
                                }
                                if (valuec3 == true) {
                                  if (!result.contains('ACL injury')) {
                                    result.add('ACL injury');
                                  }
                                  if (!result.contains('Torn meniscus')) {
                                    result.add('Torn meniscus');
                                  }
                                  if (!result.contains('Torn meniscus')) {
                                    result.add('Torn meniscus');
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
