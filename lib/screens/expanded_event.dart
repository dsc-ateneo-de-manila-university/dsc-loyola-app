import 'package:dsc_loyola_app/screens/event_info.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ExpandedEvent extends StatefulWidget {
  @override
  _ExpandedEventState createState() => _ExpandedEventState();
}

class _ExpandedEventState extends State<ExpandedEvent> {

  Map data = {};
  int i;
  EventInfo info;

  @override
  Widget build(BuildContext context) {

    data = data.isNotEmpty ? data : ModalRoute.of(context).settings.arguments;
    i = data['EventNumber'];
    info = data['EventInfo'];
    info.getInfo(i);

    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                expandedHeight: 300.0,
                collapsedHeight: 100.0,
                floating: false,
                pinned: false,
                backgroundColor: Colors.grey[900],
                actions: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        if(info.isSaved == true) {
                          info.setSaved(false);
                        } else {
                          info.setSaved(true);
                        }
                      });
                    },
                    focusColor: Colors.white,
                    icon: Icon(
                        info.isSaved == true ? Icons.favorite : Icons.favorite_border_outlined),
                    ),
                ],
                flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                    background: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/Event.png'),
                          fit: BoxFit.cover,
                        )),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 18.0, top: 240.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              info.header,
                              style: GoogleFonts.openSans(
                                color: Colors.white,
                                fontSize: 24.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 18.0),
                            Row(
                              children: [
                                Icon(
                                  Icons.calendar_today_outlined,
                                  color: Colors.white,
                                  size: 24.0,
                                ),
                                SizedBox(width: 15.0),
                                Text(
                                  info.date,
                                  style: GoogleFonts.openSans(
                                    color: Colors.white,
                                    fontSize: 12.0,
                                  ),
                                ),
                                SizedBox(width: 30.0),
                                Icon(
                                  Icons.access_time_rounded,
                                  color: Colors.white,
                                  size: 24.0,
                                ),
                                SizedBox(width: 15.0),
                                Text(
                                    info.time,
                                    style: GoogleFonts.openSans(
                                      color: Colors.white,
                                      fontSize: 12.0,
                                    )
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                ),
              ),
            ];
          },
          body: Center(
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 35.0, horizontal: 32.0),
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      info.longDescription,
                      style: GoogleFonts.openSans(
                        fontSize: 16.0,
                        color: Colors.grey[600],
                      ),
                    ),
                    SizedBox(height: 35),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        TextButton(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 50.0),
                            child: Text(
                              'Browse',
                              style: GoogleFonts.openSans(
                                fontSize: 16.0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          style: TextButton.styleFrom(
                            primary: Colors.white,
                            backgroundColor: Colors.grey[900],
                            onSurface: Colors.white,
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, '/');
                          },
                        ),
                        SizedBox(width: 18.0),
                        TextButton(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 58.0),
                            child: Text(
                              'Apply',
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
                            Navigator.pushNamed(context, '/', arguments: <String, int> {
                              'EventNumber': i,
                            });
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
    );
  }
}