import 'package:flutter/material.dart';

class ColorGenerator {

  static var colorList = [
    Color(0xff31cb10),
    Color(0xff3d8ae6),
    Color(0xffd77e23),
    Color(0xff3966f2),
    Color(0xff88b413),
    Color(0xff18d4dc),
    Color(0xff580dd7),
    Color(0xffffc718),
    Color(0xffef8118),
  ];

  static shuffleColor(){
    ColorGenerator.colorList.shuffle();
  }

  static getColor(index){
    return ColorGenerator.colorList[index];
  }
}