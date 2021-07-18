import 'package:flutter/material.dart';
import 'package:feedback_app/services/storage.dart';

class Output extends StatefulWidget {

  @override
  _OutputState createState() => _OutputState();
}

class _OutputState extends State<Output> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[200],
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
            children: [
              SizedBox(width: 80),
            if(total_score <= 10)
              Text(
                'We are sorry for your inconvenience',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.red,
                  letterSpacing: 1.0
                ),
              ),
              if(total_score > 10 && total_score <= 20)
                Text(
                  'Hope we serve you better next time',
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.yellow,
                      letterSpacing: 1.0
                  ),
                ),
              if(total_score > 20 && total_score <= 30)
                Text(
                  'We hope you come back next time.',
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.green[700],
                      letterSpacing: 1.0
                  ),
                ),
          ]
    )
          ],
        ),
      ),
    );
  }
}
