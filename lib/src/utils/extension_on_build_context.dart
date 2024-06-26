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
  Size get windowSize => MediaQuery.sizeOf(this);
  double get width => MediaQuery.sizeOf(this).width;
  double get height => MediaQuery.sizeOf(this).height;
  double get aspectRatio => MediaQuery.sizeOf(this).aspectRatio;
  double get longestSide => MediaQuery.sizeOf(this).longestSide;
  double get shortestSide => MediaQuery.sizeOf(this).shortestSide;

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
        return AlertDialog.adaptive(
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
}
