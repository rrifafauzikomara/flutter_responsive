import 'package:sizer/sizer.dart';

class SizerManager {
  const SizerManager();

  bool isTabletScreen() => SizerUtil.width < 1025;

  bool isMobileScreen() => SizerUtil.width < 600;

  /// Because the size or resolution between web, mac, linux, and windows
  /// is same, so we only handle one for all of these
  bool isWebOrDesktopScreen() =>
      SizerUtil.deviceType == DeviceType.web ||
      SizerUtil.deviceType == DeviceType.mac ||
      SizerUtil.deviceType == DeviceType.linux ||
      SizerUtil.deviceType == DeviceType.windows;

  /// If .sp not responsive or strange, we can change it to others package
  /// or manually using MediaQuery
  /// or just use the default Flutter using isSizeFixed
  ///
  /// But the format is correct
  double getTextSizeOf(
    double mobileSize, {
    double? tabletSize,
    double? webOrDesktopSize,
    bool isSizeFixed = false,
  }) {
    if (isMobileScreen()) {
      if (isSizeFixed) {
        return mobileSize;
      }
      return mobileSize.sp;
    } else if (isTabletScreen()) {
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
    double mobileSize, {
    double? tabletSize,
    double? webOrDesktopSize,
  }) {
    if (isMobileScreen()) {
      return mobileSize.w;
    } else if (isTabletScreen()) {
      return tabletSize?.w ?? mobileSize.w;
    } else if (isWebOrDesktopScreen()) {
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
    double mobileSize, {
    double? tabletSize,
    double? webOrDesktopSize,
  }) {
    if (isMobileScreen()) {
      return mobileSize.h;
    } else if (isTabletScreen()) {
      return tabletSize?.h ?? mobileSize.h;
    } else if (isWebOrDesktopScreen()) {
      return webOrDesktopSize?.h ?? mobileSize.h;
    } else {
      return mobileSize.h;
    }
  }
}
