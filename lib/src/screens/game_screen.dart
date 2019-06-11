import 'package:flutter/material.dart';
import 'dart:math';
class GameScreen extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Transform(
            transform: Matrix4.skewX(0.1),
            child: Container(
              height: 100,
              color: Colors.white,
            ),
          )
        ],
      )
    );
  }

}