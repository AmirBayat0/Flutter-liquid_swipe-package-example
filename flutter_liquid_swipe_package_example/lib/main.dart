import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

/////////////////////////////////////
//@CodeWithFlexz on Instagram
//
//AmirBayat0 on Github
//Programming with Flexz on Youtube
/////////////////////////////////////
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, home: LiquidSwipeScreen());
  }
}

class LiquidSwipeScreen extends StatelessWidget {
  LiquidSwipeScreen({Key? key}) : super(key: key);

  final pages = [
    Container(
      width: double.infinity,
      height: double.infinity,
      child: Image(
        image: AssetImage('assets/images/1.jpg'),
        fit: BoxFit.cover,
      ),
    ),
    Container(
      width: double.infinity,
      height: double.infinity,
      child: Image(
        image: AssetImage('assets/images/2.jpg'),
        fit: BoxFit.cover,
      ),
    ),
    Container(
      width: double.infinity,
      height: double.infinity,
      child: Image(
        image: AssetImage('assets/images/3.jpg'),
        fit: BoxFit.cover,
      ),
    ),
    Container(
      width: double.infinity,
      height: double.infinity,
      child: Image(
        image: AssetImage('assets/images/4.jpg'),
        fit: BoxFit.cover,
      ),
    ),
    Container(
      width: double.infinity,
      height: double.infinity,
      child: Image(
        image: AssetImage('assets/images/5.jpg'),
        fit: BoxFit.cover,
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          title: Text("@C O D E   W I T H   F L E X Z"),
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.transparent,
        ),
        body: LiquidSwipe(
          pages: pages,
          enableLoop: true,
          waveType: WaveType.liquidReveal, // CHANGING TYPE FROM HERE
        ),
      ),
    );
  }
}
