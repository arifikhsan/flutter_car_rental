import 'package:flutter/material.dart';
import 'package:flutter_car_rental/screen/home_screen.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(32),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.car_rental,
                          size: 120,
                          color: Theme.of(context).primaryColor,
                        ),
                      ],
                    ),
                    SizedBox(height: 64),
                    Text(
                      'Need a car?',
                      style: Theme.of(context)
                          .textTheme
                          .headline3
                          .copyWith(color: Theme.of(context).primaryColor),
                    ),
                    SizedBox(height: 32),
                    Text('Rent it quickly now!'),
                    SizedBox(height: 8),
                    RichText(
                      text: TextSpan(
                        style: Theme.of(context).textTheme.bodyText1,
                        children: [
                          TextSpan(
                              text:
                                  'You can choose your ideal car and book it easily with'),
                          TextSpan(
                            text: ' Rentalin',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(text: '.'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FlatButton(
                  color: Colors.indigo,
                  padding: EdgeInsets.symmetric(
                    horizontal: 32,
                    vertical: 16,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                    ),
                  ),
                  child: Text(
                    "Let's go →",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return HomeScreen();
                        },
                      ),
                    );
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
