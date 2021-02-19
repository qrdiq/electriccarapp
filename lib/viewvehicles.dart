import 'package:flutter/material.dart';

class Vehiclelist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Row(
            children: [
              Container(
                child: Image.asset('images/audi.jpg'),
                width: 150,
                height: 100,
              ),
              Column(
                children: <Widget>[
                  Text(
                    'Audi Electric Car',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Rent \$100 per day',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Row(
            children: [
              Container(
                child: Image.asset('images/bluesg.jpg'),
                width: 150,
                height: 100,
              ),
              Column(
                children: [
                  Text(
                    'BlueSG',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Rent \$100 per day',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Row(
            children: [
              Container(
                child: Image.asset('images/bmw.jpg'),
                width: 150,
                height: 100,
              ),
              Column(
                children: [
                  Text(
                    'BMW Elctric Car',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Rent \$100 per day',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Row(
            children: [
              Container(
                child: Image.asset('images/holdenvolt.jpg'),
                width: 150,
                height: 100,
              ),
              Column(
                children: [
                  Text(
                    'HoldenVolt',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Rent \$100 per day',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Row(
            children: [
              Container(
                child: Image.asset('images/tesla.jpg'),
                width: 150,
                height: 100,
              ),
              Column(
                children: [
                  Text(
                    'Tesla',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Rent \$100 per day',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
