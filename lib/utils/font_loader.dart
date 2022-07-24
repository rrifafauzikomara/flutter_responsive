import 'package:flutter/widgets.dart';
import 'package:flutter_responsive/utils/font_utils.dart';
import 'package:flutter_responsive/utils/sizer_manager.dart';
import 'package:google_fonts/google_fonts.dart';

class FontLoader {
  const FontLoader();

  final _sizer = const SizerManager();

  TextStyle textStyle(
    BuildContext context,
    FontFamilyType family,
    FontWeight weight,
    FontStyle style,
    double mobileSize, {
    double? tabletSize,
    double? webOrDesktopSize,
    Color? color,
    double? letterSpacing,
    double? wordSpacing,
    TextDecoration? decoration,
    bool isSizeFixed = false,
  }) {
    final fontSize = _sizer.getTextSizeOf(
      context,
      mobileSize,
      tabletSize: tabletSize,
      webOrDesktopSize: webOrDesktopSize,
      isSizeFixed: isSizeFixed,
    );

    return GoogleFonts.roboto(
      fontWeight: weight,
      fontStyle: style,
      fontSize: fontSize,
      color: color,
      letterSpacing: letterSpacing,
      wordSpacing: wordSpacing,
      decoration: decoration,
    );
  }
}
