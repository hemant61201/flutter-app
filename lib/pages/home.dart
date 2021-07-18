import 'dart:math';

import 'package:flutter/material.dart';
import 'package:feedback_app/services/storage.dart';
import 'dart:core';


class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  double rating = 0;
  double total_score;
  Storage instance = Storage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[600],
        title: Text('Feedback'),
        centerTitle: true,
        elevation: 0,
      ),
      body: SafeArea(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text("1. How did you like our service?",
              style: TextStyle(
                fontSize: 24.0,
                letterSpacing: 2.0,
              )
              ),
              SizedBox(height: 40.0),
              Slider(
                  value: rating,
                  onChanged: (newrating) {
                 //   instance.storeitem();
                    setState(() {
                       rating = newrating;
                   //    total_score += rating;
                       return instance.r1 = rating;
                     });
                    },
                  min: 0,
                  max: 5,
                  divisions: 5,
                  label: '$rating',
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton.icon(
                  onPressed: () {
                    setState(() {
                      instance.storeitem();
                      Navigator.pushNamed(context, '/feed2');
                    });
                  },
                  label: Text(
                    'Next',
                    style: TextStyle(
                      color: Colors.blueAccent[600],
                    ),
                  ),
                  icon: Icon(
                    Icons.navigate_next,
                    color: Colors.black,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
