import 'package:cube_alarm/src/models/cube.dart';
import 'package:flutter/material.dart';
class CubeUi extends StatefulWidget
{


  @override
  _CubeUiState createState() => _CubeUiState();
}

class _CubeUiState extends State<CubeUi> {
  Cube cube = new Cube();
  int face=0;
  @override
  Widget build(BuildContext context) {


    // TODO: implement build
    return Column(
      children: <Widget>[
        GridView(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          children: <Widget>[
          for(var i=0;i<3;i++)
            for(var j=0;j<3;j++)
              GestureDetector(
                onVerticalDragStart: (_){

                  setState(() {
                    cube.moveR();
                    print("${cube.cube[face][0][2]}");

                  });
                },
                onHorizontalDragStart: (_)
                {
                  setState(() {
                    cube.moveU();
                  });
                },
                child:  CubePiece(cube.cube,face, i, j),
              )
          ],
        ),
        RaisedButton(
          child: Text('Change Face'),
          onPressed: (){
            setState(() {
              face = (face+1)%6;
            });
          },
        ),
        RaisedButton(
    child: Text('Reset'),
    onPressed: (){
      setState(() {
        cube=   Cube();
        face=0;
      });
    },
    )
      ],
    );
  }
}
Widget CubePiece(cube,face, i ,j) {
  final color = ChooseColor(cube,face, i, j);
  return Container(
    width: 50,
    decoration: BoxDecoration(
      border: Border.all(),
    ),
    child: Container(
      color: color
    ),
  );
}
    Color ChooseColor(cube,face,i,j)
    {
        String color = cube[face][i][j];
        switch(color)
        {
          case 'White' : return Colors.white;
          case 'Red'  : return Colors.red;
          case 'Green' : return Colors.lightGreen;
          case 'Blue' : return Colors.blue;
          case 'Yellow' : return Colors.yellow;
          case 'Orange' : return Colors.deepOrange;
    }

}