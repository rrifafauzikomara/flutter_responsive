import 'package:flutter/material.dart';
import 'package:flutter_responsive/utils/font_loader.dart';

enum CustomFontWeight {
  thin,
  extraLight,
  light,
  regular,
  medium,
  semiBold,
  bold,
  extraBold,
  black,
}

enum FontFamilyType { roboto }

extension FontFamilyTypeExtension on FontFamilyType {
  bool get isRoboto => this == FontFamilyType.roboto;
}

extension FontWeightExtension on CustomFontWeight {
  FontWeight get value {
    switch (this) {
      case CustomFontWeight.thin:
        return FontWeight.w100;
      case CustomFontWeight.extraLight:
        return FontWeight.w200;
      case CustomFontWeight.light:
        return FontWeight.w300;
      case CustomFontWeight.regular:
        return FontWeight.w400;
      case CustomFontWeight.medium:
        return FontWeight.w500;
      case CustomFontWeight.semiBold:
        return FontWeight.w600;
      case CustomFontWeight.bold:
        return FontWeight.w700;
      case CustomFontWeight.extraBold:
        return FontWeight.w800;
      case CustomFontWeight.black:
        return FontWeight.w900;
      default:
        return FontWeight.w200;
    }
  }
}

class FontType {
  const FontType(
    this._family,
    this._mobileSize,
  );

  static FontLoader rgFontLoader = const FontLoader();

  final FontFamilyType _family;
  final double _mobileSize;

  TextStyle thin({
    Color? color = Colors.black,
    TextDecoration? decoration = TextDecoration.none,
    double? tabletSize,
    double? webOrDesktopSize,
    bool isSizeFixed = false,
  }) =>
      rgFontLoader.textStyle(
        _family,
        CustomFontWeight.thin.value,
        FontStyle.normal,
        _mobileSize,
        tabletSize: tabletSize,
        webOrDesktopSize: webOrDesktopSize,
        color: color,
        decoration: decoration,
        isSizeFixed: isSizeFixed,
      );

  TextStyle thinItalic({
    Color? color = Colors.black,
    TextDecoration? decoration = TextDecoration.none,
    double? tabletSize,
    double? webOrDesktopSize,
    bool isSizeFixed = false,
  }) =>
      rgFontLoader.textStyle(
        _family,
        CustomFontWeight.thin.value,
        FontStyle.italic,
        _mobileSize,
        tabletSize: tabletSize,
        webOrDesktopSize: webOrDesktopSize,
        color: color,
        decoration: decoration,
        isSizeFixed: isSizeFixed,
      );

  TextStyle extraLight({
    Color? color = Colors.black,
    TextDecoration? decoration = TextDecoration.none,
    double? tabletSize,
    double? webOrDesktopSize,
    bool isSizeFixed = false,
  }) =>
      rgFontLoader.textStyle(
        _family,
        CustomFontWeight.extraLight.value,
        FontStyle.normal,
        _mobileSize,
        tabletSize: tabletSize,
        webOrDesktopSize: webOrDesktopSize,
        color: color,
        decoration: decoration,
        isSizeFixed: isSizeFixed,
      );

  TextStyle light({
    Color? color = Colors.black,
    TextDecoration? decoration = TextDecoration.none,
    double? tabletSize,
    double? webOrDesktopSize,
    bool isSizeFixed = false,
  }) =>
      rgFontLoader.textStyle(
        _family,
        CustomFontWeight.light.value,
        FontStyle.normal,
        _mobileSize,
        tabletSize: tabletSize,
        webOrDesktopSize: webOrDesktopSize,
        color: color,
        decoration: decoration,
        isSizeFixed: isSizeFixed,
      );

  TextStyle regular({
    Color? color = Colors.black,
    TextDecoration? decoration = TextDecoration.none,
    double? tabletSize,
    double? webOrDesktopSize,
    bool isSizeFixed = false,
  }) =>
      rgFontLoader.textStyle(
        _family,
        CustomFontWeight.regular.value,
        FontStyle.normal,
        _mobileSize,
        tabletSize: tabletSize,
        webOrDesktopSize: webOrDesktopSize,
        color: color,
        decoration: decoration,
        isSizeFixed: isSizeFixed,
      );

  TextStyle lightItalic({
    Color? color = Colors.black,
    TextDecoration? decoration = TextDecoration.none,
    double? tabletSize,
    double? webOrDesktopSize,
    bool isSizeFixed = false,
  }) =>
      rgFontLoader.textStyle(
        _family,
        CustomFontWeight.light.value,
        FontStyle.italic,
        _mobileSize,
        tabletSize: tabletSize,
        webOrDesktopSize: webOrDesktopSize,
        color: color,
        decoration: decoration,
        isSizeFixed: isSizeFixed,
      );

  TextStyle medium({
    Color? color = Colors.black,
    TextDecoration? decoration = TextDecoration.none,
    double? tabletSize,
    double? webOrDesktopSize,
    bool isSizeFixed = false,
  }) =>
      rgFontLoader.textStyle(
        _family,
        CustomFontWeight.medium.value,
        FontStyle.normal,
        _mobileSize,
        tabletSize: tabletSize,
        webOrDesktopSize: webOrDesktopSize,
        color: color,
        decoration: decoration,
        isSizeFixed: isSizeFixed,
      );

  TextStyle mediumItalic({
    Color? color = Colors.black,
    TextDecoration? decoration = TextDecoration.none,
    double? tabletSize,
    double? webOrDesktopSize,
    bool isSizeFixed = false,
  }) =>
      rgFontLoader.textStyle(
        _family,
        CustomFontWeight.medium.value,
        FontStyle.italic,
        _mobileSize,
        tabletSize: tabletSize,
        webOrDesktopSize: webOrDesktopSize,
        color: color,
        decoration: decoration,
        isSizeFixed: isSizeFixed,
      );

  TextStyle semiBold({
    Color? color = Colors.black,
    TextDecoration? decoration = TextDecoration.none,
    double? tabletSize,
    double? webOrDesktopSize,
    bool isSizeFixed = false,
  }) =>
      rgFontLoader.textStyle(
        _family,
        CustomFontWeight.semiBold.value,
        FontStyle.normal,
        _mobileSize,
        tabletSize: tabletSize,
        webOrDesktopSize: webOrDesktopSize,
        color: color,
        decoration: decoration,
        isSizeFixed: isSizeFixed,
      );

  TextStyle bold({
    Color? color = Colors.black,
    TextDecoration? decoration = TextDecoration.none,
    double? tabletSize,
    double? webOrDesktopSize,
    bool isSizeFixed = false,
  }) =>
      rgFontLoader.textStyle(
        _family,
        CustomFontWeight.bold.value,
        FontStyle.normal,
        _mobileSize,
        tabletSize: tabletSize,
        webOrDesktopSize: webOrDesktopSize,
        color: color,
        decoration: decoration,
        isSizeFixed: isSizeFixed,
      );

  TextStyle extraBold({
    Color? color = Colors.black,
    TextDecoration? decoration = TextDecoration.none,
    double? tabletSize,
    double? webOrDesktopSize,
    bool isSizeFixed = false,
  }) =>
      rgFontLoader.textStyle(
        _family,
        CustomFontWeight.extraBold.value,
        FontStyle.normal,
        _mobileSize,
        tabletSize: tabletSize,
        webOrDesktopSize: webOrDesktopSize,
        color: color,
        decoration: decoration,
        isSizeFixed: isSizeFixed,
      );
}

class FontFamily {
  const FontFamily(this._family);

  final FontFamilyType _family;

  FontType get size10 => FontType(_family, 10);

  FontType get size11 => FontType(_family, 11);

  FontType get size12 => FontType(_family, 12);

  FontType get size13 => FontType(_family, 13);

  FontType get size14 => FontType(_family, 14);

  FontType get size15 => FontType(_family, 15);

  FontType get size16 => FontType(_family, 16);
}

class FontUtils {
  const FontUtils();

  FontFamily get roboto => const FontFamily(FontFamilyType.roboto);
}
