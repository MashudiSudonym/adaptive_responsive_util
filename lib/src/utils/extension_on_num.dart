import 'package:flutter/material.dart';

extension NumExt on num {
  // Simplify Horizontal and vertical gap
  SizedBox get heightBox => SizedBox(
        height: toDouble(),
      );

  SizedBox get widthBox => SizedBox(
        width: toDouble(),
      );

  // Shortcut Padding
  EdgeInsets get allPadding => EdgeInsets.all(toDouble());

  EdgeInsets get verticalPadding => EdgeInsets.symmetric(vertical: toDouble());

  EdgeInsets get horizontalPadding =>
      EdgeInsets.symmetric(horizontal: toDouble());

  EdgeInsets get leftPadding => EdgeInsets.only(left: toDouble());

  EdgeInsets get rightPadding => EdgeInsets.only(right: toDouble());

  EdgeInsets get topPadding => EdgeInsets.only(top: toDouble());

  EdgeInsets get bottomPadding => EdgeInsets.only(bottom: toDouble());

  // Num to Duration converter
  Duration get microseconds => Duration(microseconds: toInt());

  Duration get milliseconds => Duration(milliseconds: toInt());

  Duration get seconds => Duration(seconds: toInt());

  Duration get minutes => Duration(minutes: toInt());

  Duration get hours => Duration(hours: toInt());

  Duration get days => Duration(days: toInt());
}
