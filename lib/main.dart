import 'package:flutter/material.dart';
import 'package:flutter_car_rental/screen/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Car Rental',
      theme: ThemeData(
        fontFamily: 'Montserrat',
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: TextTheme(
          headline2: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      home: SplashScreen(),
      // home: HomeScreen(title: 'Flutter Demo Home Page'),
    );
  }
}
