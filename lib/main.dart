import 'package:flutter/material.dart';
import 'package:dsc_loyola_app/screens/sign_in.dart';
import 'package:dsc_loyola_app/screens/home_page.dart';
import 'package:dsc_loyola_app/screens/log_in.dart';
import 'package:dsc_loyola_app/screens/home.dart';
import 'package:dsc_loyola_app/screens/calendar.dart';
import 'package:dsc_loyola_app/screens/tracker.dart';
import 'package:dsc_loyola_app/screens/profile.dart';
import 'package:dsc_loyola_app/screens/jobs.dart';
import 'package:dsc_loyola_app/screens/about.dart';
import 'package:dsc_loyola_app/screens/settings.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/',
  routes: {
      '/': (context) => MyHomePage(),
      '/SignIn': (context) => SignIn(),
      '/LogIn': (context) => LogIn(),
      '/Home': (context) => Navigation(),
  }));

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DSC Loyola App',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: Navigation(),
    );
  }
}

class Navigation extends StatefulWidget {
  @override
  _NavigationState createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {

  int _currentIndex = 1;
  int _menuIndex = -1;

  final List<Widget> _children = [ // except for Home(), these are all placeholders for the moment
    Calendar(),
    Home(),
    Tracker(),
    Profile(),
    Jobs(),
    About(),
    Settings(),
  ];

  static const List<String> pages = [
    'Profile',
    'Jobs & Internships',
    'About the Org',
    'Settings',
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
      _menuIndex = -1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: new AppBar(
          backgroundColor: Colors.white,
          leading: PopupMenuButton<String>(
            onSelected: (value) {
              setState(() {
                _menuIndex = pages.indexOf(value);
              });
            },
            itemBuilder: (BuildContext context) {
                return pages.map((String page) {
                  return PopupMenuItem<String>(
                    value: page,
                    child: Text(page),
                  );
                }).toList();
              },
              icon: Icon(
                  Icons.menu,
                  color: Colors.grey[700],
                  size: 32.0,
              ),
              offset: Offset(0, 54),
            ),
        ),
        body: _menuIndex == -1 ? _children[_currentIndex] : _children[_menuIndex + 3],
        bottomNavigationBar: BottomNavigationBar(
          onTap: onTabTapped,
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(
              icon: new Icon(
                  Icons.calendar_today_outlined,
                  color: _currentIndex == 0 ? Color(0xff317BFD) : Colors.grey[700]),
              label: "CALENDAR", // font color turns blue when pressed
            ),
            BottomNavigationBarItem(
              icon: new Icon(
                  Icons.home_outlined,
                  color: _currentIndex == 1 ? Color(0xff317BFD) : Colors.grey[700]),
              label: "HOME",
            ),
            BottomNavigationBarItem(
              icon: new Icon(
                  Icons.check_box_outlined,
                  color: _currentIndex == 2 ? Color(0xff317BFD) : Colors.grey[700]),
              label: "TRACKER",
            ),
          ],
        ),
      ),
    ) ;
  }
}
