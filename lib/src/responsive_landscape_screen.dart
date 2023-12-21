import 'package:adaptive_responsive_util/adaptive_responsive_util.dart';
import 'package:flutter/material.dart';

class ResponsiveLandscapeScreen extends StatelessWidget {
  const ResponsiveLandscapeScreen({
    super.key,
    this.smallScreen,
    this.mediumScreen,
    this.expandedScreen,
  });

  final Widget? smallScreen;
  final Widget? mediumScreen;
  final Widget? expandedScreen;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxHeight < MinimumScreenSize.smallScreenHeight) {
          return smallScreen ?? Text('${constraints.maxHeight}');
        }

        if (constraints.maxHeight >= MinimumScreenSize.expandedScreenHeight) {
          return expandedScreen ?? Text('${constraints.maxHeight}');
        }

        if (MinimumScreenSize.smallScreenHeight <= constraints.maxHeight &&
            constraints.maxHeight < MinimumScreenSize.expandedScreenHeight) {
          return mediumScreen ?? Text('${constraints.maxHeight}');
        }

        return Text('${constraints.maxHeight}');
      },
    );
  }
}
