import 'package:flutter/material.dart';
import 'package:pro/statistic.dart';
import 'package:pro/site_inbox.dart';
import 'package:pro/personal.dart';
import 'package:pro/settings.dart';

class StatisticCurrentWebsite extends StatefulWidget {
  static const routeName = "/statistic_current_website";

  const StatisticCurrentWebsite({Key? key}) : super(key: key);

  @override
  State<StatisticCurrentWebsite> createState() =>
      _StatisticCurrentWebsiteState();
}

class _StatisticCurrentWebsiteState extends State<StatisticCurrentWebsite> {
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

    void _openSettings() {
      Navigator.pop(context);
      Navigator.of(context).pushNamed(Settings.routeName);
    }

    return Scaffold(
      appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          //  title: Text(widget.title),
          ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Container(
            width: 1400,
            height: 700,
            color: Color.fromRGBO(0x4B, 0x4B, 0x58, 0.9),
            child: Column(children: [
              Container(
                  height: 520,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                          width: 340,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Image.asset(
                                  'lib/assets/youtube_logo.png',
                                  scale: 0.9,
                                ),
                              ),
                              Container(
                                width: 250,
                                child: Text(
                                  'User reports indicate no current problems at Youtube',
                                  style: TextStyle(
                                      fontFamily: 'Inter',
                                      fontSize: 17,
                                      color: Color.fromRGBO(
                                          0x0FF, 0xFF, 0xFF, 1.0),
                                      decoration: TextDecoration.underline),
                                  textAlign: TextAlign.center,
                                ),
                              )
                            ],
                          )),
                      Column(
                        children: [
                          Container(
                              height: 35,
                              width: 340,
                              child: Text(
                                'I have problem with',
                                style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: 18,
                                    color: Color.fromRGBO(
                                        0x0FF, 0xFF, 0xFF, 0.75)),
                                textAlign: TextAlign.center,
                              )),
                          Container(
                              width: 340,
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                        height: 50,
                                        width: 75,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          color: Color.fromRGBO(
                                              0xFF, 0x14, 0x0C, 1.0),
                                          border: Border.all(
                                            color: Color.fromRGBO(
                                                0x00, 0x00, 0x00, 0.15),
                                            strokeAlign:
                                                BorderSide.strokeAlignCenter,
                                            width: 1,
                                          ),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Color.fromRGBO(
                                                  0x00, 0x00, 0x00, 0.1),
                                              blurRadius: 4,
                                              offset: Offset(
                                                  4, 8), // Shadow position
                                            ),
                                          ],
                                        ),
                                        child: Text('App',
                                            style: TextStyle(
                                                fontFamily: 'Inter',
                                                fontSize: 13.5,
                                                color: Color.fromRGBO(
                                                    0x0FF, 0xFF, 0xFF, 1.0)),
                                            textAlign: TextAlign.center)),
                                    Container(
                                        height: 50,
                                        width: 75,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          color: Color.fromRGBO(
                                              0xFF, 0x14, 0x0C, 1.0),
                                          border: Border.all(
                                            color: Color.fromRGBO(
                                                0x00, 0x00, 0x00, 0.15),
                                            strokeAlign:
                                                BorderSide.strokeAlignCenter,
                                            width: 1,
                                          ),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Color.fromRGBO(
                                                  0x00, 0x00, 0x00, 0.1),
                                              blurRadius: 4,
                                              offset: Offset(
                                                  4, 8), // Shadow position
                                            ),
                                          ],
                                        ),
                                        child: Text('Website',
                                            style: TextStyle(
                                                fontFamily: 'Inter',
                                                fontSize: 13.5,
                                                color: Color.fromRGBO(
                                                    0x0FF, 0xFF, 0xFF, 1.0)),
                                            textAlign: TextAlign.center)),
                                    Container(
                                        height: 50,
                                        width: 75,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          color: Color.fromRGBO(
                                              0xFF, 0x14, 0x0C, 1.0),
                                          border: Border.all(
                                            color: Color.fromRGBO(
                                                0x00, 0x00, 0x00, 0.15),
                                            strokeAlign:
                                                BorderSide.strokeAlignCenter,
                                            width: 1,
                                          ),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Color.fromRGBO(
                                                  0x00, 0x00, 0x00, 0.1),
                                              blurRadius: 4,
                                              offset: Offset(
                                                  4, 8), // Shadow position
                                            ),
                                          ],
                                        ),
                                        child: Text('Video stream',
                                            style: TextStyle(
                                                fontFamily: 'Inter',
                                                fontSize: 13.5,
                                                color: Color.fromRGBO(
                                                    0x0FF, 0xFF, 0xFF, 1.0)),
                                            textAlign: TextAlign.center)),
                                    Container(
                                        height: 50,
                                        width: 75,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          color: Color.fromRGBO(
                                              0xFF, 0x14, 0x0C, 1.0),
                                          border: Border.all(
                                            color: Color.fromRGBO(
                                                0x00, 0x00, 0x00, 0.15),
                                            strokeAlign:
                                                BorderSide.strokeAlignCenter,
                                            width: 1,
                                          ),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Color.fromRGBO(
                                                  0x00, 0x00, 0x00, 0.1),
                                              blurRadius: 4,
                                              offset: Offset(
                                                  4, 8), // Shadow position
                                            ),
                                          ],
                                        ),
                                        child: Text(
                                          'Another...',
                                          style: TextStyle(
                                              fontFamily: 'Inter',
                                              fontSize: 13.5,
                                              color: Color.fromRGBO(
                                                  0x0FF, 0xFF, 0xFF, 1.0)),
                                          textAlign: TextAlign.center,
                                        ))
                                  ])),
                        ],
                      ),
                      Container(
                        width: 340,
                        height: 130,
                        child: Image.asset(
                            'lib/assets/YouTube_outages_reports.png',
                            fit: BoxFit.fill),
                      ),
                      Container(
                        width: 340,
                        height: 130,
                        color: Color.fromRGBO(0xFF, 0xFF, 0xFF, 1.0),
                        child: Image.asset(
                            'lib/assets/YouTube_most_reported_problems.png'),
                      )
                    ],
                  ))
            ])),
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
                    color: Color.fromRGBO(0xFF, 0x14, 0x0C, 1)),
              ),
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
              child: FloatingActionButton(
                  onPressed: _openSettings,
                  tooltip: 'Statistic',
                  backgroundColor: Color.fromRGBO(0x23, 0x23, 0x2C, 1.0),
                  child: Image.asset('lib/icons/settings.png',
                      color: Color.fromRGBO(0xFF, 0xFF, 0xFF, 1))),
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
