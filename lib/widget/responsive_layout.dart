import 'package:flutter/material.dart';
import 'package:flutter_responsive/utils/sizer_manager.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobile;
  final Widget? tablet;
  final Widget? desktop;
  final SizerManager sizer;

  const ResponsiveLayout({
    Key? key,
    required this.mobile,
    required this.sizer,
    this.tablet,
    this.desktop,
  }) : super(key: key);

  Widget _defaultWidget(Widget? platform) => platform ?? const SizedBox();

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, cons) {
        if (sizer.isMobileScreen()) {
          debugPrint("Load Mobile Screen");
          return _defaultWidget(mobile);
        } else if (sizer.isTabletScreen()) {
          debugPrint("Load Tablet Screen");
          return _defaultWidget(tablet);
        } else if (sizer.isWebOrDesktopScreen()) {
          debugPrint("Load Web or Desktop Screen");
          return _defaultWidget(desktop);
        } else {
          debugPrint("Load Default Mobile Screen");
          return _defaultWidget(mobile);
        }
      },
    );
  }
}