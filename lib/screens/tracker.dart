import 'package:flutter/material.dart';
import 'package:dsc_loyola_app/app_data.dart';

class Tracker extends StatefulWidget {
  @override
  _TrackerState createState() => _TrackerState();
}

class _TrackerState extends State<Tracker> {
  bool _tapped = false;
  List savedActivitiesList = [];
  String title = '';

  void onButtonTap(String details) {
    setState(() {
      _tapped = true;

      savedActivitiesList = AppData.savedActivities[details];
      title = details;
    });
  }

  void onBackTap() {
    setState(() {
      _tapped = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _tapped ? _buildSavedActivityScreen(context) : _buildTracker(context),
    );
  }

  Widget _buildTracker(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 24.0, left: 16.0, right: 16.0),
        child: _buildTrackerContent(),
      ),
    );
  }

Widget _buildTrackerContent() {
    return ListView.builder(
      itemBuilder: (context, i) {
        if (i == 0){
          return _buildSaveButtons(context);
        }
        else {
          return _buildAllActivitiesRow(i-1);
        }
      },
      padding: EdgeInsets.all(5.0),
      itemCount: AppData.allActivities.length+1,
    );
  }

  Widget _buildAllActivitiesRow(int index) {
    return ListTile(
      title: Column(
        children: [
          Text(
            AppData.allActivities[index]['header'],
            style: Theme.of(context).textTheme.subtitle1,
          ),
          Text(
            AppData.allActivities[index]['description'],
            style: Theme.of(context).textTheme.bodyText1.copyWith(
              color: Colors.grey
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                AppData.allActivities[index]['date'],
                style: Theme.of(context).textTheme.bodyText1.copyWith(
                  color: Colors.blue
                ),
              )
            ],
          )
        ]
      ),
    );
  }

  Widget _buildSaveButtons(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Overview",
                style: Theme.of(context).textTheme.headline4.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 24.0,
                ),
              ),
            ],
          ),
          Divider(height: 16.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              RawMaterialButton(
                fillColor: Color.fromARGB(255, 49, 123, 253),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                child: Container(
                  height: 88.0,
                  width: 163.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.event_available_outlined, 
                            color: Colors.white, 
                            size: 36.0,
                          )
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Events",
                            style: Theme.of(context).textTheme.subtitle1.copyWith(
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "Applied",
                            style: Theme.of(context).textTheme.subtitle1.copyWith(
                              color: Colors.white
                            ),
                          ),
                          Text(
                            AppData.eventsApplied.length.toString(),
                            style: Theme.of(context).textTheme.headline5.copyWith(
                              color: Colors.white
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                onPressed: () {onButtonTap('Events Applied');},
              ),
              RawMaterialButton(
                fillColor: Color.fromARGB(255, 49, 123, 253),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                child: Container(
                  height: 88.0,
                  width: 163.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.assignment_turned_in_outlined,
                            color: Colors.white,
                            size: 36.0,
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Projects",
                                style: Theme.of(context).textTheme.subtitle1.copyWith(
                                  color: Colors.white
                                ),
                              ),
                              Text(
                                "Applied",
                                style: Theme.of(context).textTheme.subtitle1.copyWith(
                                  color: Colors.white
                                ),
                              ),
                              Text(
                                AppData.projectsApplied.length.toString(),
                                style: Theme.of(context).textTheme.headline5.copyWith(
                                  color: Colors.white
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                onPressed: () {onButtonTap('Projects Applied');},
              ),
            ],
          ),
          Divider(height: 16.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              RawMaterialButton(
                fillColor: Color.fromARGB(255, 49, 123, 253),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                child: Container(
                  height: 88.0,
                  width: 163.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.lightbulb_outlined, 
                            color: Colors.white, 
                            size: 36.0,
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Initiatives",
                                style: Theme.of(context).textTheme.subtitle1.copyWith(
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                "Saved",
                                style: Theme.of(context).textTheme.subtitle1.copyWith(
                                  color: Colors.white
                                ),
                              ),
                              Text(
                                AppData.initiativesSaved.length.toString(),
                                style: Theme.of(context).textTheme.headline5.copyWith(
                                  color: Colors.white
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                onPressed: () {onButtonTap('Initiatives Saved');},
              ),
              RawMaterialButton(
                fillColor: Color.fromARGB(255, 49, 123, 253),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                child: Container(
                  height: 88.0,
                  width: 163.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.calendar_today_outlined,
                            color: Colors.white,
                            size: 36.0,
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Jobs",
                                style: Theme.of(context).textTheme.subtitle1.copyWith(
                                  color: Colors.white
                                ),
                              ),
                              Text(
                                "Saved",
                                style: Theme.of(context).textTheme.subtitle1.copyWith(
                                  color: Colors.white
                                ),
                              ),
                              Text(
                                AppData.jobsSaved.length.toString(),
                                style: Theme.of(context).textTheme.headline5.copyWith(
                                  color: Colors.white
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                onPressed: () {onButtonTap('Jobs Saved');},
              ),
            ],
          ),
          Divider(height: 16.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Activity",
                style: Theme.of(context).textTheme.headline4.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 24.0
                ),
              ),
            ],
          ),
          Divider(height: 16.0,),
        ]
      )
    );
  }

  Widget _buildSavedActivityScreen(BuildContext context) {
    return Scaffold(
      body: _buildSavedActivityContent()
    );
  }

  Widget _buildSavedActivityContent() {
    return ListView.builder(
      shrinkWrap: true,
      padding: EdgeInsets.all(5.0),
      itemBuilder: (context, i) {
        if (i == 0) {
          return _buildSavedActivityHeader(context);
        }
        else {
          return _buildSavedActivityRow(i-1);
        }
      },
      itemCount: ((savedActivitiesList.length + 3) ~/ 2)
    );
  }

  Widget _buildSavedActivityHeader(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 28.0, right: 14.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: onBackTap),
              Text(
                title,
                style: Theme.of(context).textTheme.headline5.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 24.0,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildSavedActivityRow(int index) {
    return ListTile(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildVerticalCard(index*2),
          (index*2) + 2 > savedActivitiesList.length ? _buildEmpty() : _buildVerticalCard(index*2 + 1)
        ]
      ),
    );
  }

  Widget _buildVerticalCard(int index) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 0.05,
            blurRadius: 0.3,
            offset: Offset(0, 1),
          )
        ],
        borderRadius: BorderRadius.circular(15.0),
        color: Colors.white
      ),
      child: Column(
        children: [
          Image.asset(
            'images/Vertical_Card_Playground.png',
            height: 101,
            width: 162,
          ),
          Text(
            savedActivitiesList[index]['header'],
            //double check for font style font size
            style: Theme.of(context).textTheme.subtitle1
          ),
          Text(
            savedActivitiesList[index]['description'],
            //font style font size here
            //try to 'clip' string if it doesnt fit
            style: Theme.of(context).textTheme.bodyText1,
          )
        ]
      ),
    );
  }

  Widget _buildEmpty() {
    return Container(
      color: Colors.white,
      height: 101,
      width: 162,
    );
  }
}