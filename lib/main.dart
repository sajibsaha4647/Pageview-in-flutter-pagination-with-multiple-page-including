import 'package:flutter/material.dart';
import 'package:pageviewinflutter/singlePages/PageOne.dart';
import 'package:pageviewinflutter/singlePages/PageThree.dart';
import 'package:pageviewinflutter/singlePages/PageTwo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  PageController _controller = PageController(
    initialPage: 0
  );


  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false;
    home: SafeArea(
      child: Scaffold(
        body: PageView(
          scrollDirection: Axis.horizontal,
          controller: _controller,
          children: [
            PageOne(),
            PageTwo(),
            PageThree()
          ],
        ),
      ),
    )
    ) ;

  }
}

