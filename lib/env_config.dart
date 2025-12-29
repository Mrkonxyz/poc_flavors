import 'package:flutter/material.dart';
enum Flavor { dev, uat, prod }
class EnvConfig {
  static const String appName = String.fromEnvironment('appName', defaultValue: 'Unknown');
  static const String apiBaseUrl = String.fromEnvironment('apiBaseUrl', defaultValue: 'http://localhost');
  static const String _flavorStr = String.fromEnvironment('flavor', defaultValue: 'dev' );
  static Flavor get flavorEnv {
    try {
      return Flavor.values.byName(_flavorStr); 
    } catch (_) {
      return Flavor.dev;
    }
  }

  static bool get isProduction => flavorEnv == Flavor.prod;
  static Color get bannerColor {
    switch (flavorEnv) {
      case Flavor.dev: return Colors.red;
      case Flavor.uat: return Colors.purple;
      case Flavor.prod: return Colors.transparent;
    }
  }

  static String get bannerText {
    if (isProduction) return '';
    return flavorEnv.name.toUpperCase();
  }
}