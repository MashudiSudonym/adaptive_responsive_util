import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class AdaptiveScreen extends StatelessWidget {
  const AdaptiveScreen({
    super.key,
    this.androidScreen,
    this.webScreen,
    this.windowsScreen,
    this.iOSScreen,
    this.fuchsiaScreen,
    this.linuxScreen,
    this.macOSScreen,
  });

  final Widget? androidScreen;
  final Widget? webScreen;
  final Widget? windowsScreen;
  final Widget? iOSScreen;
  final Widget? fuchsiaScreen;
  final Widget? macOSScreen;
  final Widget? linuxScreen;

  @override
  Widget build(BuildContext context) {
    if (kIsWeb) {
      return webScreen ?? Text('$defaultTargetPlatform');
    } else {
      switch (defaultTargetPlatform) {
        case TargetPlatform.android:
          return androidScreen ?? Text('$defaultTargetPlatform');
        case TargetPlatform.windows:
          return windowsScreen ?? Text('$defaultTargetPlatform');
        case TargetPlatform.iOS:
          return iOSScreen ?? Text('$defaultTargetPlatform');
        case TargetPlatform.fuchsia:
          return fuchsiaScreen ?? Text('$defaultTargetPlatform');
        case TargetPlatform.linux:
          return linuxScreen ?? Text('$defaultTargetPlatform');
        case TargetPlatform.macOS:
          return macOSScreen ?? Text('$defaultTargetPlatform');
      }
    }
  }
}
