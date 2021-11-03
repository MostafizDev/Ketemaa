import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        /*child: GridView.builder(gridDelegate: gridDelegate, itemBuilder: itemBuilder)*/
        child: Center(
          child: Text('Home'),
        ),
      ),
    );
  }
}
