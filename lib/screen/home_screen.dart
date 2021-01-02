import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    icon: Icon(Icons.search),
                    onPressed: () {},
                  ),
                ],
              ),
              SizedBox(height: 32),
              RichText(
                text: TextSpan(
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.grey.shade800,
                    fontFamily: 'Montserrat',
                  ),
                  children: [
                    TextSpan(text: 'What is your '),
                    TextSpan(
                      text: 'Choice',
                      style: TextStyle(fontWeight: FontWeight.w700),
                    ),
                    TextSpan(text: '?'),
                  ],
                ),
              ),
              SizedBox(height: 32),
              Wrap(
                spacing: 8,
                runSpacing: 4,
                children: [
                  InputChip(
                    label: Text('Sedan'),
                    onPressed: () {
                      Fluttertoast.showToast(msg: 'Sedan');
                    },
                  ),
                  InputChip(
                    label: Text('Pick Up'),
                    onPressed: () {
                      Fluttertoast.showToast(msg: 'Pick Up');
                    },
                  ),
                  InputChip(
                    label: Text('Automatic'),
                    onPressed: () {
                      Fluttertoast.showToast(msg: 'Automatic');
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
