class EventInfo {

  String header;
  String shortDescription;
  String longDescription;
  String date;
  String time;
  bool isSaved;
  int i;

  List<String> headers = [
    "Python Workshop",
    "Featured Events 2",
    "Featured Events 3",
    "Featured Events 4",
  ];

  List<String> shortDescriptions = [
    "Short Body Text 1: Habitasse elementum mauris. Elementum mauris diam.",
    "Short Body Text 2: Habitasse elementum mauris. Elementum mauris diam.",
    "Short Body Text 3: Habitasse elementum mauris. Elementum mauris diam.",
    "Short Body Text 4: Habitasse elementum mauris. Elementum mauris diam.",
  ];

  List<String> longDescriptions = [
    "In under 3 hours, DSC Loyola provided a hands-on workshop to teach its members and also non-dsc members to learn how to program in Python. We thought them about variable types, functions, lists and loops. We also shared Python projects that the DSC co-founders built",
    "Short Body Text 2: Habitasse elementum mauris. Elementum mauris diam.",
    "Short Body Text 3: Habitasse elementum mauris. Elementum mauris diam.",
    "Short Body Text 4: Habitasse elementum mauris. Elementum mauris diam.",
  ];

  List<String> dates = [
    "March 30, 2021",
    "April 30, 2021",
    "May 30, 2021",
    "June 30, 2021",
  ];

  List<String> times = [
    "4:00 - 5:00 PM",
    "5:00 - 6:00 PM",
    "6:00 - 7:00 PM",
    "7:00 - 8:00 PM",
  ];

  List<bool> saved = List<bool>.generate(4,(j) => false);

  EventInfo();

  void getInfo(int i) {
    this.i = i;
    header = headers[i];
    shortDescription = shortDescriptions[i];
    longDescription = longDescriptions[i];
    date = dates[i];
    time = times[i];
    isSaved = saved[i];
  }

  void setSaved(bool isSaved) {
    saved[i] = isSaved;
  }

  int getLength() {
    return headers.length;
  }
}