import 'package:flutter/material.dart';
import 'package:lifetrack_app/activity_model.dart';
import 'constants.dart';

class TrackCard extends StatelessWidget {
  final String title;
  final int days;
  const TrackCard({
    Key key,
    this.title,
    this.days,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, "/TrackCardScreen",
            arguments: ActivityModel(title: title, days: days));
      },
      child: Container(
        decoration: BoxDecoration(
          color: kCardColor,
          borderRadius: BorderRadius.circular(13),
        ),
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 20, left: 80),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Text(
                    days.toString(),
                    style: TextStyle(fontSize: 35, fontFamily: "Caviar"),
                  ),
                  Text(
                    "Days",
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: "Caviar",
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Text(
                title,
                style: TextStyle(
                    fontSize: 30, color: Colors.white, fontFamily: "Caviar"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
