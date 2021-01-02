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
            icon: Icon(Icons.share),
            onPressed: () {
              Fluttertoast.showToast(msg: 'Share to friends');
            },
          ),
          IconButton(
            icon: Icon(Icons.favorite_border),
            onPressed: () {
              Fluttertoast.showToast(msg: 'Favorite');
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                AspectRatio(
                  aspectRatio: 3 / 2,
                  child: Image.network(car.imageUrl, fit: BoxFit.cover),
                ),
                Positioned(
                  left: 16,
                  bottom: 16,
                  child: Chip(
                    backgroundColor: Colors.indigo.shade400,
                    label: Text(
                      '2 of 8',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
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
            ),
            Divider(height: 2),
            FlatButton(
              padding: const EdgeInsets.all(16),
              onPressed: () {},
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'TRIP DATES',
                    style: TextStyle(
                      color: Colors.grey.shade800,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.date_range),
                          SizedBox(width: 16),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Sat, Jan 25, 10:00'),
                              SizedBox(height: 4),
                              Text('Tue, Jan 28, 10:00'),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.edit, color: Colors.indigo),
                          SizedBox(height: 4),
                          Text(
                            'CHANGE',
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.indigo.shade800,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Divider(height: 2),
            FlatButton(
              padding: const EdgeInsets.all(16),
              onPressed: () {},
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'PICKUP & RETURN',
                    style: TextStyle(
                      color: Colors.grey.shade800,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.location_on),
                          SizedBox(width: 16),
                          Text('Los Angeles, CA 90037'),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.edit, color: Colors.indigo),
                          SizedBox(height: 4),
                          Text(
                            'CHANGE',
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.indigo.shade800,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Divider(height: 2),
            FlatButton(
              padding: const EdgeInsets.all(16),
              onPressed: () {},
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'CANCELLATION POLICY',
                    style: TextStyle(
                      color: Colors.grey.shade800,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.shield),
                          SizedBox(width: 16),
                          Text('Full refund before Jan 24, 10:00 AM'),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Divider(height: 2),
            FlatButton(
              padding: const EdgeInsets.all(16),
              onPressed: () {},
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'DISTANCE INCLUDED',
                    style: TextStyle(
                      color: Colors.grey.shade800,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '450 MI',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey.shade800,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            '\$0.91 charge for each additional mile',
                            style: TextStyle(
                              color: Colors.grey.shade700,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            FlatButton(
              minWidth: double.infinity,
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 16,
              ),
              color: Theme.of(context).primaryColor,
              onPressed: () {
                Fluttertoast.showToast(msg: 'Go to checkout page');
              },
              child: Text(
                'Go to checkout',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
