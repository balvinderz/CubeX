import 'package:cube_alarm/src/models/cube.dart';
import 'package:cube_alarm/widgets/cube_ui.dart';
import 'package:flutter/material.dart';
class GameScreen extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(),
      body: CubeUi()
    );
  }

}