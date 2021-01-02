import 'package:flutter/material.dart';
import 'package:flutter_car_rental/data/model/car_model.dart';
import 'package:flutter_car_rental/screen/detail_screen.dart';

class CarItem extends StatelessWidget {
  final CarModel car;

  const CarItem({Key key, this.car}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return DetailScreen(car: car);
            },
          ),
        );
      },
      padding: EdgeInsets.all(16),
      child: Container(
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 3 / 2,
              child: Image.network(
                car.imageUrl,
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
                              text: car.name,
                              style: TextStyle(
                                fontSize: 24,
                              ),
                            ),
                            TextSpan(
                              text: " ${car.year}",
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
                            '${car.used} trips ${car.rateValue}',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey.shade700,
                            ),
                          ),
                          SizedBox(width: 4),
                          for (int i = 1; i <= car.rateValue; i++)
                            Icon(
                              Icons.star,
                              color: Theme.of(context).primaryColor,
                              size: 20,
                            ),
                          for (int i = 1;
                              i <= car.rateFrom - car.rateValue;
                              i++)
                            Icon(
                              Icons.star_outline,
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
                              text: car.priceValue.toString(),
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        'per ${car.priceUnit}',
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
    );
  }
}
