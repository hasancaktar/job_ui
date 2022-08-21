import 'package:flutter/material.dart';

class PaddingUtiliy {
  final paddingSymmetricHorizontal =
  const EdgeInsets.symmetric(horizontal: 15.0);
  final paddingSymmetricVertical = const EdgeInsets.symmetric(vertical: 40.0);
}

class BorderUtility {
  final circularBorderRadius20 = const BorderRadius.all(Radius.circular(20));
  final circularBorderRadius10 = const BorderRadius.all(Radius.circular(10));
}

class SizedBoxUtility {
  final double sizedBox20 = 20;
  final double sizedBox10 = 10;
}

class ContainerUtility {
  final double containerHight50 = 50;
}

mixin ColorsUtiliy {
  final Color whiteColor = Color(0xffffffff);
  final Color blackColor = Color(0xff000000);
  final Color blueGreyColor = Color(0x607D8BFF);
  final Color indigoBlueColor = Color(0x3F51B5FF);
  final Color white24Color = Color(0x606060ff);
  final Color lightBlueAccent = Color(0x89B6F5FF);
}
