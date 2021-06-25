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
        margin: EdgeInsets.only(top: 28.0, left: 14.0, bottom: 28.0, right: 14.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Events Applied',
                  style: Theme.of(context).textTheme.headline5.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 24.0,
                  ),
                ),
              ],
            ),
            Divider(height: 5.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                    ],
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Image.asset(
                    'images/Vertical_Card_Playground.png',
                    width: 172,
                    height: 226,
                  ),
                ),
                Container(
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
                  ),
                  child: Image.asset(
                    'images/Vertical_Card_TechFest.png',
                    width: 172,
                    height: 226,
                  ),
                ),
              ],
            ),
            Divider(height: 5.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                    ],
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Image.asset(
                    'images/Vertical_Card_LinkedUp.png',
                    width: 172,
                    height: 226,
                  ),
                ),
                Container(
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
                  ),
                  child: Image.asset(
                    'images/Vertical_Card_SandBox.png',
                    width: 172,
                    height: 226,
                  ),
                ),
              ],
            ),
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