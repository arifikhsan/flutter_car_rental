import 'package:flutter/material.dart';
import 'package:flutter_car_rental/data/model/car_model.dart';
import 'package:flutter_car_rental/data/source/car_datasource.dart';
import 'package:flutter_car_rental/screen/widget/car_item.dart';
import 'package:fluttertoast/fluttertoast.dart';

class HomeScreen extends StatefulWidget {
  final List<CarModel> cars = CarDatasource().getCars();

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Car nearby'),
        actions: [
          IconButton(
            icon: Icon(Icons.favorite_border),
            onPressed: () {
              Fluttertoast.showToast(msg: 'Favorite');
            },
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              Fluttertoast.showToast(msg: 'Search');
            },
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 32),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.grey.shade800,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                    ),
                    children: [
                      TextSpan(text: 'What is your '),
                      TextSpan(
                        text: 'Choice',
                        style: TextStyle(fontWeight: FontWeight.w800),
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
              for (int i = 0; i < widget.cars.length; i++)
                CarItem(car: widget.cars[i]),
            ],
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
