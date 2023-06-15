import 'package:flutter/material.dart';
import 'package:pro/statistic.dart';
import 'package:pro/statistic_current_website.dart';
import 'package:pro/personal.dart';
import 'package:pro/settings.dart';

class SiteInbox extends StatefulWidget {
  static const routeName = "/site_inbox";

  const SiteInbox({Key? key}) : super(key: key);

  @override
  State<SiteInbox> createState() => _SiteInboxState();
}

class _SiteInboxState extends State<SiteInbox> {
  @override
  Widget build(BuildContext context) {
    void _openHome() {
      Navigator.pop(context);
    }

    void _openStatistic() {
      Navigator.pop(context);
      Navigator.of(context).pushNamed(Statistic.routeName);
    }

    void _openYouTubeStatistic() {
      Navigator.pop(context);
      Navigator.of(context).pushNamed(StatisticCurrentWebsite.routeName);
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
      //appBar: AppBar(
      // Here we take the value from the MyHomePage object that was created by
      // the App.build method, and use it to set our appbar title.
      //  title: Text(widget.title),
      //),
      appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Container(
          width: 1400,
          height: 700,
          color: Color.fromRGBO(0x4B, 0x4B, 0x58, 0.9), //Color(0xFF140C),
          //color: Colors.grey[300],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Stack(children: [
                InkWell(
                    onTap: _openYouTubeStatistic,
                    child: Container(
                      child: Image.asset('lib/assets/YouTube_statistic.png'),
                    )),
                Container(
                  padding: EdgeInsets.only(top: 5),
                  width: 333,
                  alignment: Alignment.topRight,
                  child: Image.asset('lib/assets/Star_fulled.png'),
                )
              ]),
              Container(
                child: Image.asset('lib/assets/Dota_2_statistic.png'),
              ),
              Container(
                  child: Image.asset('lib/assets/Netflix_statistic.png',
                      color: Colors.transparent))
            ],
          ),
        ),
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
              child: Image.asset('lib/icons/inbox.png',
                  color: Color.fromRGBO(0xFF, 0x14, 0x0C, 1)),
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
