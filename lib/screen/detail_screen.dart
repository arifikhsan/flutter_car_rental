import 'package:flutter/material.dart';
import 'package:flutter_car_rental/data/model/car_model.dart';
import 'package:fluttertoast/fluttertoast.dart';

class DetailScreen extends StatelessWidget {
  final CarModel car;

  const DetailScreen({
    Key key,
    @required this.car,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(car.name),
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
      body: Container(
        child: Text('aaa'),
      ),
    );
  }
}
