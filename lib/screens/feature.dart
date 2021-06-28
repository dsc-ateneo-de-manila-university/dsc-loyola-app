import 'package:dsc_loyola_app/screens/feature_info.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Feature extends StatefulWidget {
  Feature({Key key, this.group, this.i}) : super(key: key);

  final int group;
  final int i;

  @override
  _FeatureState createState() => _FeatureState();
}

class _FeatureState extends State<Feature> {
  @override
  Widget build(BuildContext context) {

    FeatureInfo info = FeatureInfo(group: widget.group, i: widget.i);
    info.getInfo();

    return Stack(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/Home${widget.group}.png'),
              fit: BoxFit.cover,
          )),
        ),
        Opacity(
          opacity: 0.85,
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Colors.transparent,
                    Colors.black,
                  ]),
            ),
          ),
        ),
        Center(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        child: Image(
                          image: AssetImage('assets/DSClogo.png'),
                        ),
                      ),
                      SizedBox(width: 5.0,),
                      Text(
                        "Developer Student Clubs Loyola",
                        style: GoogleFonts.openSans(
                          fontSize: 18.0,
                          color: Colors.grey[700],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 477.0), // TODO: make it constrained to bottom para kahit anong gadget puwede
                SafeArea(
                  minimum: const EdgeInsets.symmetric(horizontal: 42.0),
                  child: Text(
                    info.header,
                    style: GoogleFonts.openSans(
                      fontSize: 32.0,
                      color: Color(0xff317BFD),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 9.0),
                SafeArea(
                  minimum: const EdgeInsets.symmetric(horizontal: 42.0),
                  child: Text(
                    info.description,
                    style: GoogleFonts.openSans(
                      fontSize: 16.0,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(height: 35.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    for(int i = 0; i < info.getLength(); i++)
                      Row(
                        children: [
                          Icon(
                            Icons.circle,
                            color: widget.i == i ? Color(0xff317BFD) : Colors.grey[700],
                            size: 9.0,
                          ),
                          SizedBox(width: 5.0)
                        ],
                      ),
                  ],
                ),
              ],
            ),
          ),
      ],
    );
  }
}