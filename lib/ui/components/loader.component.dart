import 'package:flutter/material.dart';

class LoaderComponent extends StatefulWidget {
  @override
  _LoaderComponentState createState() => _LoaderComponentState();
}

class _LoaderComponentState extends State<LoaderComponent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      width: double.infinity,
      height: double.infinity,
      child: Text(''),
    );
  }
}
