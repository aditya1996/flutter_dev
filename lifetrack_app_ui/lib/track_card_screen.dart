import 'package:flutter/material.dart';
import 'package:lifetrack_app/activity_model.dart';

import 'constants.dart';

class TrackCardScreen extends StatelessWidget {
  const TrackCardScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final ActivityModel activity =
        ModalRoute.of(context).settings.arguments as ActivityModel;
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            // color: Colors.pink,
            height: size.height * .25,
            width: size.width,
            margin: EdgeInsets.only(left: size.width * .10),
            child: Container(
              margin: EdgeInsets.only(top: 100),
              child: Text(
                activity.title,
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 50.0,
                  fontFamily: "Caviar",
                ),
              ),
            ),
          ),
          Container(
            height: size.height * .20,
            width: size.width,
            alignment: Alignment.topCenter,
            decoration: BoxDecoration(
              color: kCardColor,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  spreadRadius: 7,
                  blurRadius: 10,
                  offset: Offset(0, 3),
                )
              ],
            ),
            margin: EdgeInsets.only(
                left: size.width * .10, right: size.width * .50),
            child: Container(
              margin: EdgeInsets.only(top: 30),
              alignment: Alignment.center,
              child: Column(
                children: [
                  Container(
                    width: 100,
                    margin: EdgeInsets.only(left: 30),
                    child: Text(
                      activity.days.toString(),
                      style: TextStyle(
                          fontSize: 50.0,
                          fontFamily: "Caviar",
                          color: Colors.white,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  Container(
                    width: 100,
                    margin: EdgeInsets.only(left: 43, top: 8),
                    child: Text(
                      "Days",
                      style: TextStyle(
                        fontSize: 30.0,
                        fontFamily: "Caviar",
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: size.width,
            margin: EdgeInsets.only(top: 30, left: size.width * .10),
            child: Text(
              "Streak: 10",
              style: TextStyle(fontSize: 40, fontFamily: "Caviar"),
            ),
          ),
          Container(
            width: size.width,
            margin: EdgeInsets.only(top: 30, left: size.width * .10),
            child: Text(
              "Started: 02/08/1996",
              style: TextStyle(fontSize: 30, fontFamily: "Caviar"),
            ),
          )
        ],
      ),
    );
  }
}
