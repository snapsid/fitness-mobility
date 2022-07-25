import 'package:flutter/material.dart';

import '../home.dart';

class PelvicPain extends StatefulWidget {
  const PelvicPain({Key? key}) : super(key: key);

  @override
  State<PelvicPain> createState() => _PelvicPainState();
}

class _PelvicPainState extends State<PelvicPain> {
  bool? valuea1 = false;
  bool? valuea2 = false;
  bool? valuea3 = false;
  bool? valuea4 = false;

  bool? valueb1 = false;
  bool? valueb2 = false;
  bool? valueb3 = false;
  bool? valueb4 = false;
  bool? valueb5 = false;
  bool? valueb6 = false;
  bool? valueb7 = false;

  bool? valuec1 = false;
  bool? valuec2 = false;
  bool? valuec3 = false;

  List dis = [
    'Prostatitis',
    'Genital herpes',
    'Orchitis',
    'Testicular torsion',
    'Bladder stones',
  ];

  List result = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        centerTitle: true,
        title: Text('Pelvic Pain'),
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
                            "Painful intercourse",
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
                            "Painful urination",
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
                            "Testicle pain",
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
                            "Pain in the penis",
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
                            value: valueb1,
                            onChanged: (value) {
                              setState(() {
                                valueb1 = value;
                              });
                            },
                          ),
                          Text(
                            "Blood in semen",
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
                            "Fever",
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
                            "Blood in urine",
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
                            "Bumps, blisters",
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
                            "Lump",
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Checkbox(
                            value: valueb6,
                            onChanged: (value) {
                              setState(() {
                                valueb6 = value;
                              });
                            },
                          ),
                          Text(
                            "Discharge from penis",
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Checkbox(
                            value: valueb7,
                            onChanged: (value) {
                              setState(() {
                                valueb7 = value;
                              });
                            },
                          ),
                          Text(
                            "Nausea or vomiting",
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
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
                                  if (!result.contains('Prostatitis')) {
                                    result.add('Prostatitis');
                                  }
                                  if (!result.contains('Genital herpes')) {
                                    result.add('Genital herpes');
                                  }
                                  if (!result.contains('Orchitis')) {
                                    result.add('Orchitis');
                                  }
                                  if (!result.contains('Testicular torsion')) {
                                    result.add('Testicular torsion');
                                  }
                                  if (!result.contains('Bladder stones')) {
                                    result.add('Bladder stones');
                                  }
                                }

                                if (valuea2 == true) {
                                  if (!result.contains('Prostatitis')) {
                                    result.add('Prostatitis');
                                  }
                                  if (!result.contains('Genital herpes')) {
                                    result.add('Genital herpes');
                                  }

                                  if (!result.contains('Bladder stones')) {
                                    result.add('Bladder stones');
                                  }
                                }

                                if (valuea3 == true) {
                                  if (!result.contains('Prostatitis')) {
                                    result.add('Prostatitis');
                                  }

                                  if (!result.contains('Orchitis')) {
                                    result.add('Orchitis');
                                  }
                                  if (!result.contains('Testicular torsion')) {
                                    result.add('Testicular torsion');
                                  }
                                }

                                if (valueb1 == true) {
                                  if (!result.contains('Prostatitis')) {
                                    result.add('Prostatitis');
                                  }
                                }

                                if (valueb2 == true) {
                                  if (!result.contains('Prostatitis')) {
                                    result.add('Prostatitis');
                                  }
                                  if (!result.contains('Genital herpes')) {
                                    result.add('Genital herpes');
                                  }
                                  if (!result.contains('Orchitis')) {
                                    result.add('Orchitis');
                                  }
                                  if (!result.contains('Testicular torsion')) {
                                    result.add('Testicular torsion');
                                  }
                                }
                                if (valueb3 == true) {
                                  if (!result.contains('Prostatitis')) {
                                    result.add('Prostatitis');
                                  }

                                  if (!result.contains('Bladder stones')) {
                                    result.add('Bladder stones');
                                  }
                                }

                                if (valueb4 == true) {
                                  if (!result.contains('Genital herpes')) {
                                    result.add('Genital herpes');
                                  }
                                }

                                if (valueb5 == true) {
                                  if (!result.contains('Orchitis')) {
                                    result.add('Orchitis');
                                  }
                                  if (!result.contains('Testicular torsion')) {
                                    result.add('Testicular torsion');
                                  }
                                }
                                if (valueb6 == true) {
                                  if (!result.contains('Orchitis')) {
                                    result.add('Orchitis');
                                  }
                                }

                                if (valueb7 == true) {
                                  if (!result.contains('Prostatitis')) {
                                    result.add('Prostatitis');
                                  }
                                  if (!result.contains('Genital herpes')) {
                                    result.add('Genital herpes');
                                  }
                                  if (!result.contains('Orchitis')) {
                                    result.add('Orchitis');
                                  }
                                  if (!result.contains('Testicular torsion')) {
                                    result.add('Testicular torsion');
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
