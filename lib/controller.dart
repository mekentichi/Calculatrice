import 'dart:ffi';

import 'package:get/get.dart';


class Controllerdragger extends GetxController {
  String? type;
  String? typeR;

  String firstText = "0";
  String secondText = '0';
  double resultatText = 0;

  double? one;
  String? two;

  reFresh(String F, double R) {
    firstText = F;
    resultatText = R;
    update();
  }

  typeRelation(String T) {
    typeR = T;
    update();
  }
}
