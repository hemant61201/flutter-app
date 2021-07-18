import 'package:flutter/material.dart';
import 'package:feedback_app/pages/home.dart';
import 'package:feedback_app/pages/feed2.dart';
import 'package:feedback_app/pages/feed3.dart';
import 'package:feedback_app/pages/feed4.dart';
import 'package:feedback_app/pages/feed5.dart';
import 'package:feedback_app/pages/feed6.dart';
import 'package:feedback_app/pages/output.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/home',
    routes: {
      '/home': (context) => Home(),
      '/feed2': (context) => Feed2(),
      '/feed3': (context) => Feed3(),
      '/feed4': (context) => Feed4(),
      '/feed5': (context) => Feed5(),
      '/feed6': (context) => Feed6(),
      '/output': (context) => Output(),
    }
  ));
}



