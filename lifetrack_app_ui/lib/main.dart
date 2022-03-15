import 'package:flutter/material.dart';
import 'package:lifetrack_app/constants.dart';

import 'track_card.dart';
import 'track_card_input.dart';
import 'track_card_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroundColor,
      ),
      // routes
      initialRoute: "/",
      routes: {
        "/": (context) => HomeScreen(),
        "/TrackCardScreen": (context) => TrackCardScreen(),
        "/TrackCardInput": (context) => TrackCardInput(),
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            // color: Colors.brown,
            height: size.height * .35,
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(left: size.width * .10),
            child: Text(
              "LifeTrack",
              style: TextStyle(
                fontSize: 50.0,
                fontFamily: "Caviar",
              ),
            ),
          ),
          Container(
            // color: Colors.pink,
            height: size.height * .60,
            margin: EdgeInsets.only(
              top: size.height * .25,
              right: size.width * .06,
              left: size.width * .06,
            ),
            child: Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                childAspectRatio: 1,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                children: <Widget>[
                  TrackCard(
                    title: "Running",
                    days: 10,
                  ),
                  TrackCard(
                    title: "Cycling",
                    days: 12,
                  ),
                  TrackCard(
                    title: "Kayaking",
                    days: 6,
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
                top: size.height * .87, left: size.width * 0.75),
            child: SizedBox(
              height: 70.0,
              width: 70.0,
              child: FittedBox(
                child: FloatingActionButton(
                  onPressed: () {
                    //Navigate to Note Creation Screen
                    Navigator.pushNamed(context, "/TrackCardInput");
                  },
                  backgroundColor: kCardColor,
                  child: const Icon(Icons.add),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
