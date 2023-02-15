


import 'dart:math';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'dart:math' as math;
import 'package:solid_test/screens/home_screen.dart';
part 'color.state.g.dart';

Random random = Random();
late int length;
late String chars;
late String hex;
var color = ColorState();
class ColorState = ColorStateBase with _$ColorState;

abstract class ColorStateBase with Store {
  @observable
  ObservableList color = ObservableList();

  @observable
  dynamic newColor;

  @action
  changeColor() {
    randomColor =
        Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
    newColor = randomColor;
    return newColor;
  }
  // @action
  // generateRandomHexColor() {
  //   length = 6;
  //   chars = '0123456789ABCDEF';
  //   newColor = '0xff';
  //   while (length-- > 0) newColor += chars[(random.nextInt(16)) | 0];
  //   print(newColor);
  //   return newColor;
  // }
}


