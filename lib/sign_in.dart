import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage('assets/signinBG.png'),
            fit: BoxFit.cover,
          )),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
            child: Column(
              children: <Widget>[
                Image(
                  image: AssetImage('assets/DSClogo.png'),
                ),
                SizedBox(height: 30.0),
                Text(
                  "Welcome",
                  style: GoogleFonts.openSans(
                    fontSize: 28.0,
                    color: Colors.white,
                  ),
                ),
                
                Text(
                  "Googler!",
                  style: GoogleFonts.openSans(
                    fontSize: 28.0,
                    color: Color(0xff317BFD),
                  ),
                ),
                SizedBox(height: 10.0),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Add Email',
                        ),
                      ),
                      SizedBox(height: 5.0),
                      TextButton(
                        child: Text(
                          'Continue',
                          style: GoogleFonts.openSans(
                            fontSize: 20.0,
                            color: Colors.white,
                          ),
                        ),
                        style: TextButton.styleFrom(
                          primary: Colors.white,
                          backgroundColor: Color(0xff317BFD),
                          onSurface: Colors.white,
                        ),
                        onPressed: () async {
                          print("Pressed");
                        },
                      ),
                    ]),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
