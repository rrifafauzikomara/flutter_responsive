import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SizerManager {
  const SizerManager();

  bool isTabletScreen(BuildContext context) =>
      MediaQuery.of(context).size.width < 1025;

  bool isMobileScreen(BuildContext context) =>
      MediaQuery.of(context).size.width < 600;

  /// Because the size or resolution between web, mac, linux, and windows
  /// is same, so we only handle one for all of these
  bool isWebOrDesktopScreen(BuildContext context) =>
      MediaQuery.of(context).size.width > 1025;

  /// If .sp not responsive or strange, we can change it to others package
  /// or manually using MediaQuery
  /// or just use the default Flutter using isSizeFixed
  ///
  /// But the format is correct
  double getTextSizeOf(
    BuildContext context,
    double mobileSize, {
    double? tabletSize,
    double? webOrDesktopSize,
    bool isSizeFixed = false,
  }) {
    if (isMobileScreen(context)) {
      if (isSizeFixed) {
        return mobileSize;
      }
      return mobileSize.sp;
    } else if (isTabletScreen(context)) {
      if (isSizeFixed) {
        return tabletSize ?? mobileSize;
      }
      return tabletSize?.sp ?? mobileSize.sp;
    } else {
      if (isSizeFixed) {
        return webOrDesktopSize ?? mobileSize;
      }
      return webOrDesktopSize?.sp ?? mobileSize.sp;
    }
  }

  /// If you need fixed size from Flutter, just use it
  double getFixedSize(double size) => size;

  /// If .w not responsive or strange, we can change it to others package
  /// or manually using MediaQuery
  ///
  /// But the format is correct
  double getWidthSizeOf(
    BuildContext context,
    double mobileSize, {
    double? tabletSize,
    double? webOrDesktopSize,
  }) {
    if (isMobileScreen(context)) {
      return mobileSize.w;
    } else if (isTabletScreen(context)) {
      return tabletSize?.w ?? mobileSize.w;
    } else if (isWebOrDesktopScreen(context)) {
      return webOrDesktopSize?.w ?? mobileSize.w;
    } else {
      return mobileSize.w;
    }
  }

  /// If .h not responsive or strange, we can change it to others package
  /// or manually using MediaQuery
  ///
  /// But the format is correct
  double getHeightSizeOf(
    BuildContext context,
    double mobileSize, {
    double? tabletSize,
    double? webOrDesktopSize,
  }) {
    if (isMobileScreen(context)) {
      return mobileSize.h;
    } else if (isTabletScreen(context)) {
      return tabletSize?.h ?? mobileSize.h;
    } else if (isWebOrDesktopScreen(context)) {
      return webOrDesktopSize?.h ?? mobileSize.h;
    } else {
      return mobileSize.h;
    }
  }
}
