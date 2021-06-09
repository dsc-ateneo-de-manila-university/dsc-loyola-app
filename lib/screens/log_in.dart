import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LogIn extends StatefulWidget {
  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {

  Map data = {};
  TextEditingController textController = TextEditingController();
  String email;

  @override
  Widget build(BuildContext context) {
    data = data.isNotEmpty ? data : ModalRoute.of(context).settings.arguments;
    email = data['Username'];

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/signinBG.png'),
              fit: BoxFit.cover,
            )),
        child: SafeArea(
          minimum: const EdgeInsets.symmetric(vertical: 46.0, horizontal: 23.0),
          child: SingleChildScrollView(
            controller: ScrollController(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Row(
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
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 211.0),
                Row(
                  children: <Widget>[
                    Container(
                      child: Image(
                        image: AssetImage('assets/Gray.png'),
                      ),
                    ),
                    SizedBox(width: 10.0,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                            "Name Placeholder",
                            style: GoogleFonts.openSans(
                              fontSize: 24.0,
                              color: Color(0xff317BFD),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        Text(
                            email,
                            style: GoogleFonts.openSans(
                              fontSize: 12.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 30.0),
                Container(
                  width: 48.0,
                  child: TextField(
                    obscureText: true,
                    obscuringCharacter: "•",
                    controller: textController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Create Password',
                      fillColor: Colors.white,
                      filled: true,
                    ),
                  ),
                ),
                SizedBox(height: 15.0),
                TextButton(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Continue',
                      style: GoogleFonts.openSans(
                        fontSize: 16.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: Color(0xff317BFD),
                    onSurface: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/', arguments: <String, String> {
                      'Username': email,
                      'Password': textController.text,
                    });
                  },
                ),
                SizedBox(height: 400.0),
              ],
            ),
          ),
        ),
      ),
    ) ;
  }
}