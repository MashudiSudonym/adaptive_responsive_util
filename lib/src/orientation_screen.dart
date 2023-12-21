import 'package:flutter/material.dart';

class OrientationScreen extends StatelessWidget {
  const OrientationScreen({
    super.key,
    this.responsiveLandscapeScreen,
    this.responsivePortraitScreen,
  });

  final Widget? responsiveLandscapeScreen;
  final Widget? responsivePortraitScreen;

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) {
        if (orientation == Orientation.portrait) {
          return responsivePortraitScreen ?? Text('$orientation');
        } else {
          return responsiveLandscapeScreen ?? Text('$orientation');
        }
      },
    );
  }
}
