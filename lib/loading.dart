import 'package:flutter/material.dart';

class Loading extends StatefulWidget {
  static const routeName = "/loading";

  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
  Widget build(BuildContext context) {
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
          height: 700,
          color: Color.fromRGBO(0x4B, 0x4B, 0x58, 0.9),
          alignment: Alignment.center,
          child: Image.asset('lib/assets/Downdetector_reversecolor21.png')),
    ) // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
