import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/appoint.dart';
import 'package:flutter_app/first.dart';
import 'package:flutter_app/forgetpass.dart';
import 'package:flutter_app/home.dart';
import 'package:flutter_app/homelist/footpain.dart';
import 'package:flutter_app/homelist/hippain.dart';
import 'package:flutter_app/homelist/kneepain.dart';
import 'package:flutter_app/homelist/lowback.dart';
import 'package:flutter_app/homelist/neckpain.dart';
import 'package:flutter_app/homelist/pelvicpain.dart';
import 'package:flutter_app/homelist/shoulderpain.dart';
import 'package:flutter_app/login.dart';
import 'package:flutter_app/register.dart';
import 'package:flutter_app/result.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'first',
    routes: {
      'first': (context) => MyFirst(),
      'register': (context) => MyRegister(),
      'login': (context) => MyLogin(),
      'home': (context) => MyHome(),
      'lowback': (context) => LowBack(),
      'result': (context) => Myresult(),
      'hip': (context) => HipPain(),
      'knee': (context) => KneePain(),
      'shoulder': (context) => ShoulderPain(),
      'foot': (context) => Footpain(),
      'neck': (context) => NeckPain(),
      'pelvic': (context) => PelvicPain(),
      'appoin': (context) => Appoint(),
      'forget': (context) => ForgetPass()
    },
  ));
}
