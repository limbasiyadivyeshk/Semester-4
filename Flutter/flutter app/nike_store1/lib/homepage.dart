import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Expanded(child: Container(
        child: Column(children: [

        ],),
        color: Colors.black,
        padding: EdgeInsets.all(15),
      ),),
    ));
  }
}
