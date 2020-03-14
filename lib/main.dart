import 'package:flutter/material.dart';

//Imports Screens
import './ui/screens/home/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lobatn',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Color(0XFF603eca),
          accentColor: Colors.yellow,
          buttonTheme: ButtonThemeData(
            buttonColor: Colors.orange, //  <-- dark color
            textTheme: ButtonTextTheme
                .primary, 
          ),
          iconTheme: IconThemeData(color: Color(0XFF603eca))),
      home: HomeScreen(),
    );
  }
}
