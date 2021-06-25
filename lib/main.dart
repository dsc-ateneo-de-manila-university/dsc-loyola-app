import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tracker',
      theme: ThemeData(
        primaryColor: Colors.white
      ),
      home: Tracker(),
    );
  }
}

class Tracker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(icon: Icon(Icons.menu, size: 36.0,), onPressed: null)
        ],
      ),
      body: Container(
        margin: EdgeInsets.only(top: 32.0, left: 16.0, right: 16.0),
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
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color.fromARGB(255, 49, 123, 253)
                  ),
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
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
                                "0",
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
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color.fromARGB(255, 49, 123, 253)
                  ),
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
                                "0",
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
              ],
            ),
            Divider(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color.fromARGB(255, 49, 123, 253)
                  ),
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
                                "Projects",
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
                                "0",
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
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color.fromARGB(255, 49, 123, 253)
                  ),
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
                                "0",
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        spreadRadius: 0.05,
                        blurRadius: 0.3,
                        offset: Offset(0, 1),
                      )
                    ]    
                  ),
                  child: Image.asset(
                    'images/Horizontal_Card_Sandbox.png',
                    height: 168.0,
                    width: 339.0
                  ),
                )
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 2,
        fixedColor: Color.fromARGB(255, 49, 123, 253),
        items: [
          BottomNavigationBarItem(
            label: "CALENDAR",
            icon: Icon(Icons.calendar_today)
          ),
          BottomNavigationBarItem(
            label: "HOME",
            icon: Icon(Icons.home)
          ),
          BottomNavigationBarItem(
            label: "TRACKER",
            icon: Icon(Icons.mobile_friendly)
          ),
        ],
        onTap: null,
      ),
    );
  }
}