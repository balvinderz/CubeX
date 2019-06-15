import 'package:cube_alarm/src/models/algorithm.dart';
import 'package:cube_alarm/src/models/cube.dart';
import 'package:flutter/material.dart';
class OllScreen extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    Cube cube =Cube();
   // cube.moveR();
  //  cube.moveL();

     cube.moveU();
    cube.printCube();
    return Scaffold(
      appBar: AppBar(

        title: Text('Oll',),
      ),
    body: ListView.builder(itemBuilder: (context,index){
      return createCard(null);
    },
    itemCount: 10,)
    );

  }
  Widget createCard(Algorithm algorithm )
  {
    return Card(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Text("Soja marja",style: TextStyle(
            color: Colors.white
          ),),
          Image.network("https://ruwix.com/pics/fridrich/friedrich-oll-16.png")
        ],  
      ),
    );
  }
  
}