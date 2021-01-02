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
      debugShowMaterialGrid: false,
      theme: ThemeData(
        backgroundColor: Colors.white,
        fontFamily: 'Montserrat',
        primarySwatch: Colors.blue,
        primaryColor: Colors.indigo,
        accentColor: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: TextTheme(
          headline2: TextStyle(fontWeight: FontWeight.bold),
          headline3: TextStyle(fontWeight: FontWeight.w700),
        ),
      ),
      home: SplashScreen(),
      // home: HomeScreen(title: 'Flutter Demo Home Page'),
    );
  }
}
