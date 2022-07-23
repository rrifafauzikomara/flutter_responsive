
import 'package:flutter/material.dart';
import 'package:flutter_responsive/screen/login/desktop_login_screen.dart';
import 'package:flutter_responsive/screen/login/mobile_login_screen.dart';
import 'package:flutter_responsive/screen/login/tablet_login_screen.dart';
import 'package:flutter_responsive/widget/base_class_mixin.dart';
import 'package:flutter_responsive/widget/responsive_layout.dart';

class MainLoginScreen extends StatelessWidget with BaseClassMixin {
  MainLoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: MobileLoginScreen(),
      tablet: TabletLoginScreen(),
      desktop: DesktopLoginScreen(),
      sizer: sizer,
    );
  }
}
