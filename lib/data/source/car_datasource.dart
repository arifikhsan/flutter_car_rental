import 'dart:math';

import 'package:flutter_car_rental/data/model/car_model.dart';

class CarDatasource {
  List<CarModel> getCars() {
    List<CarModel> cars = [];

    for (var i = 1; i <= 10; i++) {
      cars.add(
        CarModel(
          id: i,
          name: 'Toyota Yaris #$i',
          year: 2020 + i,
          priceValue: 56 + i,
          priceUnit: 'day',
          used: 5 * i,
          rateValue: 1 + Random().nextInt(5 - 1),
          rateFrom: 5,
          imageUrl: "https://source.unsplash.com/random/400x${400 + i}?cars",
        ),
      );
    }

    return cars;
  }
}
