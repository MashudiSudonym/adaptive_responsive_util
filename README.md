[![pub package](https://img.shields.io/pub/v/adaptive_responsive_util.svg)](https://pub.dartlang.org/packages/adaptive_responsive_util)
[![Score](https://img.shields.io/pub/points/adaptive_responsive_util?label=Score&logo=dart)](https://pub.dartlang.org/packages/adaptive_responsive_util/score)
[![License](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)
[![Platform](https://img.shields.io/badge/Platform-Android%20|%20iOS%20|%20Web%20|%20macOS%20|%20Windows%20|%20Linux%20-blue.svg?logo=flutter)](https://pub.dartlang.org/packages/adaptive_responsive_util)
![GitHub stars](https://img.shields.io/github/stars/MashudiSudonym/adaptive_responsive_util)
![GitHub forks](https://img.shields.io/github/forks/MashudiSudonym/adaptive_responsive_util)
![GitHub issues](https://img.shields.io/github/issues/MashudiSudonym/adaptive_responsive_util)
![GitHub pull requests](https://img.shields.io/github/issues-pr/MashudiSudonym/adaptive_responsive_util)

# Adaptive & Responsive Util

This package was inspired by this video https://www.youtube.com/watch?v=MrPJBAOzKTQ&t=262s

Makes it easier to manage the types of screens that will be used, use "AdaptiveScreen" if you want to create a special screen based on the type of platform such as website, Android, iOS, Mac, Windows. or use "ResponsiveLandscapeScreen" or "ResponsivePortraitScreen" if you want to get even better screen responsiveness.

### Adaptive or/and Responsive widget

#### AdaptiveScreen Widget
  - Use this widget if you are going to build pages or specific widgets according to the type of platform 

#### OrientationScreen Widget
  - Use this widget if you are going to build pages or specific widgets according to the type of page orientation

#### ResponsivePortraitScreen Widget
  - Use this widget if you want to form groups/branches for your layout or widget display to suit the screen size conditions when in portrait position. (make sure to also set the same for the landscape position with ResponsiveLandscapeScreen Widget)

#### ResponsiveLandscapeScreen Widget
  - Use this widget if you want to form groups/branches for your layout or widget display to suit the screen size conditions when in landscape position. (make sure to also set the same for the portrait position with ResponsivePortraitScreen Widget)

## Utils Content

Utils Content is another package from adaptive / responsive, containing additional code to help make the coding process faster.

Inspired from this article https://blog.stackademic.com/flutter-extensions-tricks-to-boost-your-productivity-88573b7efc0f

### Extension on BuildContent

This extension is used for several parts such as themes, media queries, displaying static UI such as snackbar and alert dialog, and a simple version for customizing widgets based on screen orientation.

#### List Simplify Theme Access

``` dart
  primaryColor => Theme.of(this).primaryColor;
  canvasColor => Theme.of(this).canvasColor;
  cardColor => Theme.of(this).cardColor;
  focusColor => Theme.of(this).focusColor;
  dialogBackgroundColor => Theme.of(this).dialogBackgroundColor;
  disabledColor => Theme.of(this).disabledColor;
  dividerColor => Theme.of(this).dividerColor;
  highlightColor => Theme.of(this).highlightColor;
  hintColor => Theme.of(this).hintColor;
  hoverColor => Theme.of(this).hoverColor;
  indicatorColor => Theme.of(this).indicatorColor;
  primaryDark => Theme.of(this).primaryColorDark;
  primaryLight => Theme.of(this).primaryColorLight;
  shadowColor => Theme.of(this).shadowColor;
```

example : ```context.primaryColor```

#### List Simplify MediaQuery Access

``` dart
  width => MediaQuery.of(this).size.width;
  height => MediaQuery.of(this).size.height;
  aspectRatio => MediaQuery.of(this).size.aspectRatio;
  longestSide => MediaQuery.of(this).size.longestSide;
  shortestSide => MediaQuery.of(this).size.shortestSide;
  orientation => MediaQuery.of(this).orientation;
  padding => MediaQuery.of(this).padding;
```

example : ```context.width```

#### Display SnackBar

example : ```context.snackBar('example');```

#### Display Alert Dialog

example :
``` dart
context.displayAlertDialog(
    title: 'title',
    content: 'content',
    onPositivePressed: () {},
    positiveButtonText : 'Ok',
    onNegativePressed: () {},
    negativeButtonText: 'Cancel',
);
```

#### Build Widget Based on Orientation

example :
``` dart
import 'package:flutter/material.dart';
import 'extension_on_build_context.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return context.orientationAction(
      onPortrait: () {
        return const Column(
          children: [],
        );
      },
      onLandscape: () {
        return const Row(
          children: [],
        );
      },
    );
  }
}

```
