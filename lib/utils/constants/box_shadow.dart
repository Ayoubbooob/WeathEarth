import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const kSearchInputFieldBoxShadow = [
  BoxShadow(
    blurRadius: 10.0,
    color: Color(0xff292F36),
    offset: Offset(0, -10),
  ),
  BoxShadow(
    blurRadius: 10.0,
    color: Color(0xff171A1F),
    offset: Offset(0, 10),
  ),
  BoxShadow(
    blurRadius: 10.0,
    color: Color(0xff292F36),
    offset: Offset(-10, 2),
  ),
  BoxShadow(
    blurRadius: 10.0,
    color: Color(0xff171A1F),
    offset: Offset(10, 2),
  ),
];
const kCardBoxShadow = [
  BoxShadow(
    color: Color(0xff2A3037),
    offset: Offset(7, 0),
  ),
  BoxShadow(
    color: Color(0xff2A3037),
    offset: Offset(0, 7),
  ),
  BoxShadow(
    color: Color(0xff14171B),
    offset: Offset(-7, 0),
  ),
  BoxShadow(
    color: Color(0xff14171B),
    offset: Offset(0, -7),
  ),
];

const kDayBoxShadow = [
  BoxShadow(
    blurRadius: 5.0,
    spreadRadius: 1.0,
    color: Color(0xff2A3037),
    offset: Offset(-5, -3),
  ),
  BoxShadow(
    spreadRadius: 1.0,
    color: Color(0xff14171B),
    offset: Offset(5, 3),
  ),
  BoxShadow(
    color: Color(0xff2A3037),
    offset: Offset(-5, -3),
  ),
];
