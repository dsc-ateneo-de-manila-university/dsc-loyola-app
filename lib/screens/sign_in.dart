import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          //decoration: BoxDecoration(
          //    image: DecorationImage(
          //  image: AssetImage('assets/signinBG.png'),
          //  fit: BoxFit.cover,
          //)),
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
                      //Container(
                      //  child: Image(
                      //    image: AssetImage('assets/DSClogo.png'),
                      //  ),
                      //),
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
                  SizedBox(height: 181.0),
                  Text(
                    "Welcome",
                    style: GoogleFonts.openSans(
                      fontSize: 32.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Googler!",
                    style: GoogleFonts.openSans(
                      fontSize: 32.0,
                      color: Color(0xff317BFD),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 30.0),
                  Container(
                    width: 48.0,
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      controller: textController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Add Email',
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
                      Navigator.pushNamed(context, '/LogIn', arguments: <String, String> {
                        'Username': textController.text,
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