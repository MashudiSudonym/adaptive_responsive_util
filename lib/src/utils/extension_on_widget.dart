import 'package:flutter/material.dart';

extension WidgetExt on Widget {
  // Expanded Widget
  Expanded expanded({int flex = 1}) => Expanded(
        flex: flex,
        child: this,
      );

  // Set Opacity
  Opacity setOpacity(double val) => Opacity(
        opacity: val,
        child: this,
      );

  // Set Padding
  Padding withPadding(EdgeInsets padding) => Padding(
        padding: padding,
        child: this,
      );

  // Wrap SizedBox
  SizedBox box({double? width, double? height}) => SizedBox(
        width: width,
        height: height,
        child: this,
      );

  // Center
  Center center() => Center(
        child: this,
      );

  // Clickable
  Widget onClick(Function() onClick) => InkWell(
        onTap: onClick,
        child: this,
      );

  // Rotate
  RotatedBox rotate(int quarterTurns) => RotatedBox(
        quarterTurns: quarterTurns,
        child: this,
      );
}
