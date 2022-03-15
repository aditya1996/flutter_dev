class ActivityModel {
  int id;
  String title;
  int days;

  ActivityModel({
    this.id,
    this.title,
    this.days,
  });

  //function to convert our item into a map
  Map<String, dynamic> toMap() {
    return ({
      "id": id,
      "title": title,
      "days": days,
    });
  }
}
