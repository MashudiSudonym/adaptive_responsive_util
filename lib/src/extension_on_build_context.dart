import 'package:flutter/material.dart';

extension ContextExt on BuildContext {
  // Simplify Accessing Theme
  Color get primaryColor => Theme.of(this).primaryColor;
  Color get canvasColor => Theme.of(this).canvasColor;
  Color get cardColor => Theme.of(this).cardColor;
  Color get focusColor => Theme.of(this).focusColor;
  Color get dialogBackgroundColor => Theme.of(this).dialogBackgroundColor;
  Color get disabledColor => Theme.of(this).disabledColor;
  Color get dividerColor => Theme.of(this).dividerColor;
  Color get highlightColor => Theme.of(this).highlightColor;
  Color get hintColor => Theme.of(this).hintColor;
  Color get hoverColor => Theme.of(this).hoverColor;
  Color get indicatorColor => Theme.of(this).indicatorColor;
  Color get primaryDark => Theme.of(this).primaryColorDark;
  Color get primaryLight => Theme.of(this).primaryColorLight;
  Color get shadowColor => Theme.of(this).shadowColor;

  // Simplify Accessing MediaQuery
  double get width => MediaQuery.of(this).size.width;
  double get height => MediaQuery.of(this).size.height;
  double get aspectRatio => MediaQuery.of(this).size.aspectRatio;
  double get longestSide => MediaQuery.of(this).size.longestSide;
  double get shortestSide => MediaQuery.of(this).size.shortestSide;
  Orientation get orientation => MediaQuery.of(this).orientation;
  EdgeInsets get padding => MediaQuery.of(this).padding;

  // Display SnackBar
  void showSnackBar(String message) {
    if (!mounted) return;
    final snackBar = SnackBar(
      content: Text(message),
      duration: const Duration(seconds: 3),
    );
    ScaffoldMessenger.of(this).showSnackBar(snackBar);
  }

  // Display AlertDialog
  void displayAlertDialog({
    required String title,
    required String content,
    VoidCallback? onPositivePressed,
    String positiveButtonText = 'OK',
    VoidCallback? onNegativePressed,
    String negativeButtonText = 'Cancel',
  }) {
    if (!mounted) return;
    showDialog(
      context: this,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(content),
          actions: <Widget>[
            TextButton(
              onPressed: onNegativePressed ??
                  () {
                    Navigator.of(this).pop();
                  },
              child: Text(negativeButtonText),
            ),
            TextButton(
              onPressed: onPositivePressed ??
                  () {
                    Navigator.of(this).pop();
                  },
              child: Text(positiveButtonText),
            ),
          ],
        );
      },
    );
  }

  // Build Widget Based on Orientation
  T orientationAction<T>({
    required T Function() onPortrait,
    required T Function() onLandscape,
  }) {
    if (MediaQuery.of(this).orientation == Orientation.landscape) {
      return onLandscape();
    }
    return onPortrait();
  }
}
