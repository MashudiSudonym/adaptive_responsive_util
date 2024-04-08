import 'package:flutter/material.dart';

extension StringExt on String {
  /*
  * Convert Text to Text Widget
  * use it for quick convert text to widget,
  * not customizable style of text widget
  */
  Text get text => Text(this);

  // common validators
  // 8 Digit Characters, Contains Lowercase, Uppercase, & Number
  bool isValidPassword() {
    return RegExp(r'^(?=.*[A-Z])(?=.*[a-z])(?=.*\d).{8,}$').hasMatch(this);
  }

  bool isValidEmail() {
    return RegExp(r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$')
        .hasMatch(this);
  }

  bool isURL() {
    // Regular expression for a simple URL pattern
    RegExp urlRegExp = RegExp(
      r'^(https?|ftp):\/\/[^\s/$.?#].[^\s]*$',
      caseSensitive: false,
      multiLine: false,
    );

    return urlRegExp.hasMatch(this);
  }

  // manipulation string
  String append(String other) => '$this$other';

  String get capitalizeFirstLetter =>
      isNotEmpty ? this[0].toUpperCase() + substring(1) : this;

  String get removeWhitespace => replaceAll(RegExp(r'\s+'), '');

  // Format: yyyy-MM-dd HH:mm:ss
  DateTime toDateTime() {
    return DateTime.parse(this);
  }
}
