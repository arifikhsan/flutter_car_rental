import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    icon: Icon(Icons.search),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: RichText(
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
            ),
            SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Wrap(
                    spacing: 8,
                    runSpacing: 4,
                    children: [
                      InputChip(
                        label: Text(
                          'Sedan',
                          style: TextStyle(fontSize: 12),
                        ),
                        onPressed: () {
                          Fluttertoast.showToast(msg: 'Sedan');
                        },
                      ),
                      InputChip(
                        label: Text(
                          'Pick Up',
                          style: TextStyle(fontSize: 12),
                        ),
                        onPressed: () {
                          Fluttertoast.showToast(msg: 'Pick Up');
                        },
                      ),
                      InputChip(
                        label: Text(
                          'Automatic',
                          style: TextStyle(fontSize: 12),
                        ),
                        onPressed: () {
                          Fluttertoast.showToast(msg: 'Automatic');
                        },
                      ),
                    ],
                  ),
                  IconButton(
                    icon: Icon(Icons.tune),
                    onPressed: () {
                      Fluttertoast.showToast(msg: 'Preferences');
                    },
                  )
                ],
              ),
            ),
            SizedBox(height: 16),
            FlatButton(
              onPressed: () {},
              padding: EdgeInsets.all(16),
              child: Container(
                child: Column(
                  children: [
                    AspectRatio(
                      aspectRatio: 3 / 2,
                      child: Image.network(
                        'https://placekitten.com/400/300',
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(height: 8),
                    Row(
                      children: [
                        Expanded(
                          flex: 4,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RichText(
                                text: TextSpan(
                                  style: TextStyle(
                                    color: Colors.grey.shade800,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: 'Montserrat',
                                  ),
                                  children: [
                                    TextSpan(
                                      text: "Toyota Avanza",
                                      style: TextStyle(
                                        fontSize: 24,
                                      ),
                                    ),
                                    TextSpan(
                                      text: " 2020",
                                      style: TextStyle(
                                        fontSize: 18,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 4),
                              Row(
                                children: [
                                  Text(
                                    '4x used',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey.shade700,
                                    ),
                                  ),
                                  SizedBox(width: 4),
                                  Icon(
                                    Icons.star,
                                    color: Theme.of(context).primaryColor,
                                    size: 20,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Theme.of(context).primaryColor,
                                    size: 20,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Theme.of(context).primaryColor,
                                    size: 20,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Theme.of(context).primaryColor,
                                    size: 20,
                                  ),
                                  Icon(
                                    Icons.star_border,
                                    color: Theme.of(context).primaryColor,
                                    size: 20,
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              RichText(
                                text: TextSpan(
                                  style: TextStyle(
                                    color: Colors.grey.shade800,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Montserrat',
                                  ),
                                  children: [
                                    TextSpan(
                                      text: "\$ ",
                                      style: TextStyle(
                                        fontSize: 12,
                                      ),
                                    ),
                                    TextSpan(
                                      text: "59",
                                      style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.w800,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Text(
                                'per day',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.grey.shade700,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
