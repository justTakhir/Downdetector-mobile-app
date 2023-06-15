import 'package:flutter/material.dart';
import 'package:pro/statistic.dart';
import 'package:pro/site_inbox.dart';
import 'package:pro/personal.dart';

class Settings extends StatefulWidget {
  static const routeName = "/settings";

  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    void _openHome() {
      Navigator.pop(context);
    }

    void _openStatistic() {
      Navigator.pop(context);
      Navigator.of(context).pushNamed(Statistic.routeName);
    }

    void _openSiteInbox() {
      Navigator.pop(context);
      Navigator.of(context).pushNamed(SiteInbox.routeName);
    }

    void _openPersonal() {
      Navigator.pop(context);
      Navigator.of(context).pushNamed(Personal.routeName);
    }

    return Scaffold(
      appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          ),
      //appBar: AppBar(
      // Here we take the value from the MyHomePage object that was created by
      // the App.build method, and use it to set our appbar title.
      //  title: Text(widget.title),
      //),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Container(
            width: 1400,
            height: 700,
            color: Color.fromRGBO(0x4B, 0x4B, 0x58, 0.9), //Color(0xFF140C),
            //color: Colors.grey[300],
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                    height: 350,
                    width: 330,
                    //padding: EdgeInsets.only(top: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                            height: 50,
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(0xFF, 0x14, 0x0C, 1.0),
                              border: Border.all(
                                color: Color.fromRGBO(0x00, 0x00, 0x00, 0.15),
                                strokeAlign: BorderSide.strokeAlignCenter,
                                width: 1,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Color.fromRGBO(0x00, 0x00, 0x00, 0.1),
                                  blurRadius: 4,
                                  offset: Offset(4, 8), // Shadow position
                                ),
                              ],
                            ),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Edit profile',
                                    style: TextStyle(
                                        color: Color.fromRGBO(
                                            0xFF, 0xFF, 0xFF, 1.0),
                                        fontFamily: 'Inter',
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center,
                                  ),
                                  Text(
                                    '>',
                                    style: TextStyle(
                                        color: Color.fromRGBO(
                                            0xFF, 0xFF, 0xFF, 1.0),
                                        fontFamily: 'Inter',
                                        fontSize: 26,
                                        fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center,
                                  )
                                ])),
                        Container(
                            height: 50,
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(0xFF, 0x14, 0x0C, 1.0),
                              border: Border.all(
                                color: Color.fromRGBO(0x00, 0x00, 0x00, 0.15),
                                strokeAlign: BorderSide.strokeAlignCenter,
                                width: 1,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Color.fromRGBO(0x00, 0x00, 0x00, 0.1),
                                  blurRadius: 4,
                                  offset: Offset(4, 8), // Shadow position
                                ),
                              ],
                            ),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Language',
                                    style: TextStyle(
                                        color: Color.fromRGBO(
                                            0xFF, 0xFF, 0xFF, 1.0),
                                        fontFamily: 'Inter',
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center,
                                  ),
                                  Text(
                                    '>',
                                    style: TextStyle(
                                        color: Color.fromRGBO(
                                            0xFF, 0xFF, 0xFF, 1.0),
                                        fontFamily: 'Inter',
                                        fontSize: 26,
                                        fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center,
                                  )
                                ])),
                        Container(
                            height: 50,
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(0xFF, 0x14, 0x0C, 1.0),
                              border: Border.all(
                                color: Color.fromRGBO(0x00, 0x00, 0x00, 0.15),
                                strokeAlign: BorderSide.strokeAlignCenter,
                                width: 1,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Color.fromRGBO(0x00, 0x00, 0x00, 0.1),
                                  blurRadius: 4,
                                  offset: Offset(4, 8), // Shadow position
                                ),
                              ],
                            ),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Notification',
                                    style: TextStyle(
                                        color: Color.fromRGBO(
                                            0xFF, 0xFF, 0xFF, 1.0),
                                        fontFamily: 'Inter',
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center,
                                  ),
                                  Text(
                                    '>',
                                    style: TextStyle(
                                        color: Color.fromRGBO(
                                            0xFF, 0xFF, 0xFF, 1.0),
                                        fontFamily: 'Inter',
                                        fontSize: 26,
                                        fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center,
                                  )
                                ])),
                        Container(
                            height: 50,
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(0xFF, 0x14, 0x0C, 1.0),
                              border: Border.all(
                                color: Color.fromRGBO(0x00, 0x00, 0x00, 0.15),
                                strokeAlign: BorderSide.strokeAlignCenter,
                                width: 1,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Color.fromRGBO(0x00, 0x00, 0x00, 0.1),
                                  blurRadius: 4,
                                  offset: Offset(4, 8), // Shadow position
                                ),
                              ],
                            ),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Help',
                                    style: TextStyle(
                                        color: Color.fromRGBO(
                                            0xFF, 0xFF, 0xFF, 1.0),
                                        fontFamily: 'Inter',
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center,
                                  ),
                                  Text(
                                    '>',
                                    style: TextStyle(
                                        color: Color.fromRGBO(
                                            0xFF, 0xFF, 0xFF, 1.0),
                                        fontFamily: 'Inter',
                                        fontSize: 26,
                                        fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center,
                                  )
                                ]))
                      ],
                    )),
                Container(
                  height: 100,
                  alignment: Alignment.bottomCenter,
                  width: 260,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'App version',
                        style: TextStyle(
                          color: Color.fromRGBO(0xFF, 0xFF, 0xFF, 0.6),
                          fontFamily: 'Inter',
                          fontSize: 26,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        '1.0.0',
                        style: TextStyle(
                          color: Color.fromRGBO(0xFF, 0xFF, 0xFF, 0.6),
                          fontFamily: 'Inter',
                          fontSize: 26,
                        ),
                        textAlign: TextAlign.end,
                      )
                    ],
                  ),
                )
              ],
            )),
      ),
      bottomNavigationBar: BottomAppBar(
          child: Container(
        height: 104,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        decoration: BoxDecoration(
          color: Color.fromRGBO(0x23, 0x23, 0x2C, 1.0),
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(0x00, 0x00, 0x00, 0.45),
              blurRadius: 4,
              offset: Offset(4, 8), // Shadow position
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 40,
              child: FloatingActionButton(
                  onPressed: _openHome,
                  tooltip: 'Statistic',
                  backgroundColor: Color.fromRGBO(0x23, 0x23, 0x2C, 1.0),
                  child: Image.asset('lib/icons/home_app_logo.png',
                      color: Color.fromRGBO(0xFF, 0xFF, 0xFF, 1))),
            ),
            Container(
              height: 40,
              child: FloatingActionButton(
                  onPressed: _openStatistic,
                  tooltip: 'Statistic',
                  backgroundColor: Color.fromRGBO(0x23, 0x23, 0x2C, 1.0),
                  child: Image.asset('lib/icons/bar_chart_4_bars.png',
                      color: Color.fromRGBO(0xFF, 0xFF, 0xFF, 1))),
            ),
            Container(
              height: 40,
              child: FloatingActionButton(
                  onPressed: _openSiteInbox,
                  tooltip: 'Statistic',
                  backgroundColor: Color.fromRGBO(0x23, 0x23, 0x2C, 1.0),
                  child: Image.asset('lib/icons/inbox.png',
                      color: Color.fromRGBO(0xFF, 0xFF, 0xFF, 1))),
            ),
            Container(
              height: 40,
              child: FloatingActionButton(
                  onPressed: _openPersonal,
                  tooltip: 'Statistic',
                  backgroundColor: Color.fromRGBO(0x23, 0x23, 0x2C, 1.0),
                  child: Image.asset('lib/icons/person_2.png',
                      color: Color.fromRGBO(0xFF, 0xFF, 0xFF, 1))),
            ),
            Container(
              height: 40,
              child: Image.asset('lib/icons/settings.png',
                  color: Color.fromRGBO(0xFF, 0x14, 0x0C, 1)),
            ),
            //Icon(
            //  Icons,
            //  size: 40,
            //  color: Colors.grey[500],
            //),
          ],
        ),
      )), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
