import 'package:flutter/foundation.dart';

class CarModel {
  final int id;
  final String name;
  final int year;
  final int priceValue;
  final String priceUnit;
  final int used;
  final int rateValue;
  final int rateFrom;
  final String imageUrl;

  CarModel({
    @required this.id,
    @required this.name,
    @required this.year,
    @required this.priceValue,
    @required this.priceUnit,
    @required this.used,
    @required this.rateValue,
    @required this.rateFrom,
    @required this.imageUrl,
  });
}
