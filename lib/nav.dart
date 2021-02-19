import 'package:flutter/material.dart';
import 'package:mad_project/viewvehicles.dart';
import 'package:mad_project/home.dart';
import 'package:mad_project/system.dart';

void main() => runApp(Navpage());

class Navpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(
                    icon: Icon(
                  Icons.home,
                )),
                Tab(
                    icon: Icon(
                  Icons.car_rental,
                )),
                Tab(
                    icon: Icon(
                  Icons.info,
                )),
              ],
            ),
            title: Text('GoCarGoLa'),
          ),
          body: TabBarView(
            children: [
              Home(),
              Vehiclelist(),
              ThirdScreen(),
            ],
          ),
        ),
      ),
    );
  }
}
