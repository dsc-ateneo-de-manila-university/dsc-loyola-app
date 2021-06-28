import 'package:flutter/material.dart';
import 'package:dsc_loyola_app/screens/feature.dart';
import 'package:dsc_loyola_app/screens/feature_info.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  PageController controller = PageController();
  PageController controller2 = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: PageView(
                  controller: controller,
                  children: [
                    for (int i = 0; i < 3; i++)
                      PageView(
                        controller: controller2,
                        children: [
                          for (int j = 0; j < FeatureInfo(group: i).getLength(); j++)
                            Feature(group: i, i: j),
                        ],
                        scrollDirection: Axis.horizontal,
                      )
                  ],
                  scrollDirection: Axis.vertical,
                  ),
        ),
    );
  }
}