import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: getBody(),
      ),
    );
  }

  Widget getCards({
    @required Color color,
    @required String heading,
    @required String date,
    @required Widget middlePart,
    String footer,
  }) {
    return Container(
      height: 170,
      width: 190,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0)),
      child: Card(
        child: Column(
          children: <Widget>[
            Container(
              height: 5.0,
              width: 190,
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    heading,
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    date,
                    style: TextStyle(fontSize: 12.0),
                  ),
                  middlePart,
                  footer != null && footer.length > 1
                      ? Text(
                          '72c',
                          style: TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      : Container(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget getBody() {
    return Stack(
      children: [
        getBackgroundColor(),
        getContents(),
      ],
    );
  }

  Widget getBackgroundColor() {
    return Column(
      children: [
        Expanded(
          child: Container(color: Colors.blue),
        ),
        Expanded(
          child: Container(color: Colors.white),
        ),
      ],
    );
  }

  Widget getContents() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        getEngineControlPart(),
        Padding(
          padding: EdgeInsets.all(18.0),
          child: Image.asset(
            'images/car.png',
            height: 200,
          ),
        ),
        getBottomPart(),
      ],
    );
  }

  Widget getBottomPart() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          getCards(
            color: Colors.blue,
            heading: 'Good morning, Sir',
            date: 'Mar, 19',
            middlePart: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.wb_sunny,
                size: 75,
                color: Colors.yellow,
              ),
            ),
            footer: '72c',
          ),
          getCards(
            color: Colors.blue,
            heading: 'FordPress Rewards',
            date: 'Mar, 19',
            middlePart: Text(
              'You just earned 4200 points',
              style: TextStyle(
                fontSize: 22.0,
              ),
            ),
          ),
          getCards(
            color: Colors.blue[900],
            heading: 'FordPress Rewards',
            date: 'Mar, 19',
            middlePart: Text(
              'You just earned 4200 points',
              style: TextStyle(
                fontSize: 22.0,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget getEngineControlPart() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                color: Colors.blue[900],
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.blue[900].withOpacity(0.4),
                    spreadRadius: 5,
                    // offset: Offset(0.0, 15.0),
                  ), // shadow dewar jonno
                ],
              ),
              child: Center(
                child: Icon(
                  Icons.lock_open,
                  color: Colors.white,
                  size: 30.0,
                ),
              ),
            ),
            Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                color: Colors.blue[900],
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.blue[900].withOpacity(0.4),
                    spreadRadius: 10,
                    // offset: Offset(0.0, 15.0),
                  ), // shadow dewar jonno
                ],
              ),
              child: Center(
                child: Text(
                  'Start',
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                color: Colors.blue[900],
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.blue[900].withOpacity(0.4),
                    spreadRadius: 5,
                    // offset: Offset(0.0, 15.0),
                  ), // shadow dewar jonno
                ],
              ),
              child: Center(
                child: Icon(
                  Icons.lock_outline,
                  color: Colors.white,
                  size: 30.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
