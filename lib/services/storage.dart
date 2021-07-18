import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';
import 'package:feedback_app/pages/home.dart';
import 'package:feedback_app/pages/feed2.dart';
import 'package:feedback_app/pages/output.dart';
double total_score = 0;
class Storage{

  double r1;
 // Storage(this.r1);

  void storeitem() {
     total_score += r1;
  }
}