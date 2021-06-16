import 'package:flutter/material.dart';
import 'package:dsc_loyola_app/screens/sign_in.dart';
import 'package:dsc_loyola_app/screens/home_page.dart';
import 'package:dsc_loyola_app/screens/log_in.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/', 
  routes: {
      '/': (context) => MyHomePage(),
      '/SignIn': (context) => SignIn(),
      '/LogIn': (context) => LogIn(),
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
      home: MyHomePage(title: 'DSC Loyola App'),
    );
  }
}
