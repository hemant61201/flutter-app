import 'package:feedback_app/services/storage.dart';
import 'package:flutter/material.dart';


class Feed5 extends StatefulWidget {

  @override
  _Feed5State createState() => _Feed5State();
}

class _Feed5State extends State<Feed5> {

  double rating = 0;
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
              Text("1. How likely are you comeback here?",
                  style: TextStyle(
                    fontSize: 24.0,
                    letterSpacing: 2.0,
                  )
              ),
              SizedBox(height: 40.0),
              Slider(
                value: rating,
                onChanged: (newrating) {
                  setState(() {
                    rating = newrating;
                    //    t2 += rating;
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
                      Navigator.pushNamed(context, '/feed6');
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
