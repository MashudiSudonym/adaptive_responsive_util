// ignore_for_file: lines_longer_than_80_chars, constant_identifier_names

import 'package:logger/logger.dart';

class Constants {
  // APP FLAVOR
  static const String? appFlavor =
      String.fromEnvironment('FLUTTER_APP_FLAVOR') != ''
          ? String.fromEnvironment('FLUTTER_APP_FLAVOR')
          : null;
  static const DEVELOPMENT = 'development';
  static const STAGING = 'staging';
  static const PRODUCTION = 'production';
  // Logger
  static final logger = Logger();
  static const BLANK_STRING = '';
}
