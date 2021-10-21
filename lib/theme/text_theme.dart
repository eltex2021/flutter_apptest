import 'package:flutter/material.dart';

import 'color_theme.dart';

abstract class AppTexsts {
  static const nunito30Black = TextStyle(
    color: AppColors.black,
    fontSize: 30,
    //letterSpacing: 0.5,
    height: 1.364,
    fontFamily: 'Nunito',
    fontWeight: FontWeight.w900,
    fontStyle: FontStyle.normal,
  );
  static const nunito25Black = TextStyle(
    color: AppColors.black,
    fontSize: 25,
    //letterSpacing: 0.5,
    height: 1.364,
    fontFamily: 'Nunito',
    fontWeight: FontWeight.w700,
    fontStyle: FontStyle.normal,
  );
  static const nunito40Grey = TextStyle(
    color: AppColors.black,
    fontSize: 40,
    //letterSpacing: 0.5,
    height: 1.364,
    fontFamily: 'Nunito',
    fontWeight: FontWeight.w900,
    fontStyle: FontStyle.normal,
  );
  static const nunito20Black = TextStyle(
    color: AppColors.black,
    fontSize: 20,
    height: 1.364,
    fontFamily: 'Nunito Regular',
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
  );
  static const nunito20White = TextStyle(
    color: AppColors.whiteBackground,
    fontSize: 20,
    height: 1.364,
    fontFamily: 'Nunito Regular',
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
  );
}
