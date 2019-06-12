import 'package:flutter/material.dart';
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
      Row(
      mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Container(
            color: Colors.white,
            margin: EdgeInsets.only(bottom: 10.0),
            child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Cuber",style:TextStyle(
                      fontFamily: 'gamefont',
                      fontSize: 24.0,
                      color: Colors.black
                  ),),
                  Row(
                    mainAxisSize: MainAxisSize.max,

                    children: <Widget>[
                      Padding(
                        padding : EdgeInsets.all(10.0),
                        child: Text("HP: ",style:TextStyle(
                            fontFamily: 'gamefont',
                            fontSize: 20.0,
                            color: Colors.black
                        ),),
                      ),
                      SizedBox(
                        width: 100.0,
                        child: LinearProgressIndicator(
                          value: 0.8,

                        ),
                      )
                    ],
                  )
                ],
              ),
          ),
        ],
      ),
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

        ],
      )
    );
  }

}