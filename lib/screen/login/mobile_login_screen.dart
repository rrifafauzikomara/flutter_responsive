import 'package:flutter/material.dart';
import 'package:flutter_responsive/widget/base_class_mixin.dart';
import 'package:flutter_responsive/widget/custom_text_field.dart';
import 'package:flutter_responsive/widget/fingerprint.dart';

class MobileLoginScreen extends StatelessWidget with BaseClassMixin {
  MobileLoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 1,
        title: Text(
          "Mobile Login Screen",
          style: fontUtils.roboto.size16.bold(isSizeFixed: true),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(sizer.getFixedSize(20)),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                "images/ic_io.png",
                height: sizer.getFixedSize(100),
              ),
              SizedBox(height: sizer.getFixedSize(100)),
              CustomTextField(
                sizer: sizer,
                hint: "Username",
              ),
              SizedBox(height: sizer.getFixedSize(20)),
              CustomTextField(
                sizer: sizer,
                hint: "Password",
              ),
              SizedBox(height: sizer.getFixedSize(20)),
              FingerPrint(sizer: sizer),
            ],
          ),
        ),
      ),
    );
  }
}
