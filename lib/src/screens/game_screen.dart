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
        mainAxisSize: MainAxisSize.max,

        children: <Widget>[
           Container(
             padding: EdgeInsets.all(8.0),
            height: 100,
            color: Colors.white,
            child: GridView(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              padding: EdgeInsets.all(16.0),
              children : [

                Align(
                  child: Text("FIGHT",style:
                  TextStyle(
                      fontSize: 35.0,
                      color: Colors.black,
                      fontFamily: 'gamefont'
                  ),),
                  alignment: Alignment.topLeft,
                ),
                Align(
                  alignment : Alignment.topRight,

                  child: Padding(
                    padding: const EdgeInsets.only(right : 8.0),
                    child: Text("RUN",style:
                    TextStyle(
                        fontSize: 35.0,
                        color: Colors.black,
                        fontFamily: 'gamefont'
                    ),),
                  ),
                ),
              ],
            ),
            ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Container(

              )
            ],
          )
        ],
      )
    );
  }

}