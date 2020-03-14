import 'dart:math';

import 'package:flutter/material.dart';
import 'package:lobaton/ui/screens/home/home.screen.dart';

class InitialScreen extends StatefulWidget {
  @override
  _InitialScreenState createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  final _random = new Random();
  int next(int min, int max) => min + _random.nextInt(max - min);
  int myRandom;
  List myColorsPiolas = [
    Colors.purpleAccent,
    Colors.purple,
    Colors.yellow,
  ];

  @override
  void initState() {
    super.initState();
    cambiarColor();
  }

   cambiarColor() async   {
    myRandom = 0;
    print('CAMBIAA COLOR $myRandom');

    this.setState(() {});
    await Future.delayed(Duration(seconds: 3));
    myRandom = 1;
    print('CAMBIAA COLOR $myRandom');

    this.setState(() {});
    await Future.delayed(Duration(seconds: 3));
    print('CAMBIAA COLOR $myRandom');
    myRandom = 2;
    this.setState(() {});
    await Future.delayed(Duration(
      seconds: 1,
    ));
    Navigator.push(
      context,
      PageRouteBuilder(
        transitionDuration: Duration(seconds: 2),
        pageBuilder: (_, __, ___) => HomeScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      width: double.infinity,
      height: double.infinity,
      child: AnimatedContainer(
          duration: Duration(seconds: 5),
          curve: Curves.bounceInOut,
          color: myColorsPiolas[myRandom],
          child: Padding(
            padding: const EdgeInsets.all(50.0),
            child: Hero(
              tag: 'imageHero',
              child: Image.network(
                'https://dkcih82i8p5bk.cloudfront.net/static/logo_cambio_seguro.png',
               
              ),
            ),
          )),
    );
  }
}
