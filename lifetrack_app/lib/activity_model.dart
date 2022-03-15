import 'package:intl/intl.dart';

class ActivityModel {
  int id;
  String title;
  int days;
  int target;
  DateTime creationDate;
  String lastUpdated;

  ActivityModel({
    this.id,
    this.title,
    this.days,
    this.target,
    this.creationDate,
    this.lastUpdated,
  });

  //function to convert our item into a map
  Map<String, dynamic> toMap() {
    return ({
      "id": id,
      "title": title,
      "days": days,
      "target": target,
      "creationDate": DateFormat.MMMMd().format(creationDate),
      "lastUpdated": lastUpdated,
    });
  }
}
