import 'package:flutter/material.dart';

import 'constants.dart';

class TrackCardInput extends StatelessWidget {
  const TrackCardInput({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
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
                "Enter Activity",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 50.0,
                  fontFamily: "Caviar",
                ),
              ),
            ),
          ),
          Container(
            width: size.width,
            margin: EdgeInsets.only(top: 30, left: size.width * .10),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Activity Name",
              ),
              style: TextStyle(fontSize: 30, fontFamily: "Caviar"),
            ),
          ),
          Container(
            width: size.width,
            margin: EdgeInsets.only(top: 30, left: size.width * .10),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Target Days",
              ),
              style: TextStyle(fontSize: 30, fontFamily: "Caviar"),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: SizedBox(
              height: 130.0,
              width: 130.0,
              child: FittedBox(
                child: FloatingActionButton.extended(
                  onPressed: () {},
                  backgroundColor: kCardColor,
                  label: const Text("Save"),
                  icon: const Icon(Icons.save),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
