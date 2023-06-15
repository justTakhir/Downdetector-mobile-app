import 'package:flutter/material.dart';
import 'package:pro/loading.dart';

import 'package:pro/statistic.dart';
import 'package:pro/site_inbox.dart';
import 'package:pro/personal.dart';
import 'package:pro/settings.dart';
import 'package:pro/statistic_current_website.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Downdetector',
      routes: {
        MyHomePage.routeName: (BuildContext context) =>
            const MyHomePage(title: 'Downdetector'),
        Statistic.routeName: (BuildContext context) => const Statistic(),
        StatisticCurrentWebsite.routeName: (BuildContext context) =>
            const StatisticCurrentWebsite(),
        SiteInbox.routeName: (BuildContext context) => const SiteInbox(),
        Personal.routeName: (BuildContext context) => const Personal(),
        Settings.routeName: (BuildContext context) => const Settings(),
      },
      initialRoute: Loading.routeName,
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
          primarySwatch: Palette.appBarColor
          //primarySwatch: Colors.yellow,
          ),
      home: const MyHomePage(title: 'Downdetector'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  static const routeName = "/home";

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _openStatistic() {
    Navigator.of(context).pushNamed(Statistic.routeName);
  }

  void _openSiteInbox() {
    Navigator.of(context).pushNamed(SiteInbox.routeName);
  }

  void _openPersonal() {
    Navigator.of(context).pushNamed(Personal.routeName);
  }

  void _openSettings() {
    Navigator.of(context).pushNamed(Settings.routeName);
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
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
        height: 1000,
        color: Color.fromRGBO(0x4B, 0x4B, 0x58, 0.9),
        //Color(0xFF140C),
        //color: Colors.grey[300],
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
              height: 200,
              width: 1400,
              //alignment: Alignment.topCenter,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      child: Image.asset(
                          'lib/assets/Downdetector_reversecolor21.png')),
                  Container(
                    width: 280,
                    height: 40,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(0xFF, 0xFF, 0xFF, 1.0),
                        border: Border.all(
                          color: Color.fromRGBO(0xFF, 0x14, 0x0C, 1.0),
                        )),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Text(''),
                        ),
                        Container(
                          padding: EdgeInsets.only(right: 8),
                          child: Image.asset('lib/icons/search.png',
                              color: Color.fromRGBO(0xFF, 0x14, 0x0C, 1.0)),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 340,
                    height: 50,
                    alignment: Alignment.center,
                    child: Text(
                      'We tell you when your favorite services are down or having problems',
                      style: TextStyle(
                        color: Color.fromRGBO(0xFF, 0xFF, 0xFF, 1.0),
                        fontFamily: 'Inter',
                        fontSize: 16.5,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              )),
          Container(height: 100, width: 1400)
        ]),
      )),
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
              child: Image.asset('lib/icons/home_app_logo.png',
                  color: Color.fromRGBO(0xFF, 0x14, 0x0C, 1)),
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

class Palette {
  static const MaterialColor appBarColor = const MaterialColor(
    0xff23232C,
    // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
    const <int, Color>{
      50: Color.fromRGBO(0x23, 0x23, 0x2C, 1.0), //10%
      100: Color.fromRGBO(0x23, 0x23, 0x2C, 1.0), //20%
      200: Color.fromRGBO(0x23, 0x23, 0x2C, 1.0), //30%
      300: Color.fromRGBO(0x23, 0x23, 0x2C, 1.0), //40%
      400: Color.fromRGBO(0x23, 0x23, 0x2C, 1.0), //50%
      500: Color.fromRGBO(0x23, 0x23, 0x2C, 1.0), //60%
      600: Color.fromRGBO(0x23, 0x23, 0x2C, 1.0), //70%
      700: Color.fromRGBO(0x23, 0x23, 0x2C, 1.0), //80%
      800: Color.fromRGBO(0x23, 0x23, 0x2C, 1.0), //90%
      900: Color.fromRGBO(0x23, 0x23, 0x2C, 1.0), //100%
    },
  );
}
