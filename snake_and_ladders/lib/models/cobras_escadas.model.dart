import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CobrasEscadasModel {
  List<CobraModel> escadas = [
    CobraModel(color: Colors.blue, x: 2, y: 38),
    CobraModel(color: Colors.purple, x: 7, y: 14),
    CobraModel(color: Colors.amber, x: 8, y: 31),
    CobraModel(color: Colors.yellow, x: 15, y: 26),
    CobraModel(color: Colors.cyanAccent, x: 21, y: 42),
    CobraModel(color: Colors.green, x: 28, y: 84),
    CobraModel(color: Colors.pink, x: 36, y: 44),
    CobraModel(color: Colors.orange, x: 51, y: 67),
    CobraModel(color: Colors.red, x: 71, y: 91),
    CobraModel(color: Colors.lime, x: 78, y: 98),
    CobraModel(color: Colors.black, x: 87, y: 94),
  ];

  List<CobraModel> cobras = [
    CobraModel(color: Colors.blue, x: 16, y: 6),
    CobraModel(color: Colors.purple, x: 46, y: 25),
    CobraModel(color: Colors.amber, x: 49, y: 11),
    CobraModel(color: Colors.yellow, x: 62, y: 19),
    CobraModel(color: Colors.cyanAccent, x: 64, y: 60),
    CobraModel(color: Colors.green, x: 74, y: 53),
    CobraModel(color: Colors.pink, x: 89, y: 68),
    CobraModel(color: Colors.orange, x: 92, y: 88),
    CobraModel(color: Colors.red, x: 95, y: 75),
    CobraModel(color: Colors.lime, x: 99, y: 80),
  ];
  // List<CobraModel> cobras = List.generate(10, (index) {
  //   int rColor = Random().nextInt(50);

  //   return CobraModel(
  //       color: Colors.primaries[rColor],
  //       x: index * Random().nextInt(10),
  //       y: index * Random().nextInt(10));
  // });
}

class CobraModel {
  Color color;
  int x;
  int y;

  CobraModel({required this.color, required this.x, required this.y});
}

class EscadasModel {
  Color color;
  int x;
  int y;

  EscadasModel({required this.color, required this.x, required this.y});
}
