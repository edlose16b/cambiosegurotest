import 'package:flutter/material.dart';
import 'package:lobaton/providers/divisa.provider.dart';
import 'package:lobaton/ui/screens/initial/initial.screen.dart';
import 'package:provider/provider.dart';

//Imports Screens
import './ui/screens/home/home.screen.dart';

void main() => runApp(MyApp());

//TODO: Lobaton cambiará por hablador
//TODO: Lobaton agregará el diseño que falta

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => DivisaProvider(),
      child: MaterialApp(
        title: 'Lobatn',
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.light,
        darkTheme: ThemeData(backgroundColor: Colors.black),
        theme: ThemeData(
            backgroundColor: Colors.grey[200],
            primaryColor: Color(0XFF603eca),
            accentColor: Colors.yellow,
            buttonTheme: ButtonThemeData(
              buttonColor: Colors.orange, //  <-- dark color
              textTheme: ButtonTextTheme.primary,
            ),
            iconTheme: IconThemeData(color: Color(0XFF603eca))),
        home: HomeScreen(),
      ),
    );
  }
}
