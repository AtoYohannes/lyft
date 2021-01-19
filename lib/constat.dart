import 'package:flutter/material.dart';

final kInnerDecoration = BoxDecoration(
  color: Colors.white,
  border: Border.all(color: Colors.white),
  borderRadius: BorderRadius.circular(32),
);

final kGradientBoxDecoration = BoxDecoration(
  gradient: LinearGradient(colors: [Color(0xff7107c1), Color(0xffe401c2)]),
  border: Border.all(
    color: Colors.white,
  ),
  borderRadius: BorderRadius.circular(32),
);
final kInnerDecoration2 = BoxDecoration(
  color: Colors.white,
  border: Border.all(color: Colors.white),
  borderRadius: BorderRadius.circular(32),
);
final kGradientBoxDecoration2 = BoxDecoration(
  gradient: LinearGradient(
      colors: [Color(0xff7107c1), Color(0xffe401c2)],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      // stops: [0.3,0.3]
      ),
  // border: Border.all(
  //   color: Colors.white,
  // ),
   boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
  borderRadius: BorderRadius.circular(100),
);
