import 'package:cube_alarm/src/screens/game_screen.dart';
import 'package:cube_alarm/src/screens/oll_screen.dart';
import 'package:flutter/material.dart';
class f2lCard extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Material(

      child: InkWell(
        onTap: (){

        },

        splashColor: Colors.blueAccent,
        child: Container(
          padding : EdgeInsets.all(8.0),
          child: Card(
            color: Colors.blue,
            elevation: 20.0,
            child: Center(
              child: Text('F2L',style: TextStyle(
                fontSize: 20,
                color: Colors.black
              ),),
            ),
          ),
        ),
      ),
    );
  }
}
class OllCard extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build


    return Material(

      child: InkWell(
        onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)
            {
              return OllScreen();
            }));
        },

        splashColor: Colors.yellow,
        child: Container(
          padding : EdgeInsets.all(8.0),
          child: Card(
            color: Colors.yellowAccent,
            elevation: 20.0,
            child: Center(
              child: Text('OLL',style: TextStyle(
                  fontSize: 20,
                  color: Colors.black
              ),),
            ),
          ),
        ),
      ),
    );
  }
}
class PllCard extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Material(

      child: InkWell(
        onTap: (){

        },

        splashColor: Colors.red,
        child: Container(
          padding : EdgeInsets.all(8.0),
          child: Card(
            color: Colors.redAccent,
            elevation: 20.0,
            child: Center(
              child: Text('PLL',style: TextStyle(
                  fontSize: 20,
                  color: Colors.black
              ),),
            ),
          ),
        ),
      ),
    );
  }
}
class Game extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Material(

      child: InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context){
          return   GameScreen();
          }));
        },

        splashColor: Colors.green,
        child: Container(
          padding : EdgeInsets.all(8.0),
          child: Card(
            color: Colors.green,
            elevation: 20.0,
            child: Center(
              child: Text('GAME',style: TextStyle(
                  fontSize: 20,
                  color: Colors.black
              ),),
            ),
          ),
        ),
      ),
    );
  }
}


