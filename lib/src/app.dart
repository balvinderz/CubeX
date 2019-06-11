import 'package:cube_alarm/widgets/custom_card.dart';
import 'package:flutter/material.dart';
class App extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData.dark(),
      title: 'CubeX',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('CubeX'),
          centerTitle: true,
        ),
        body: Center(
          child: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              padding: EdgeInsets.all(16.0),
          children: <Widget>[
            f2lCard(),
            OllCard(),
            PllCard(),
            Game()
          ],),
        )
          
        
      ),
    );
  }
}