import 'package:flutter/material.dart';
import 'package:flutter_responsive/widget/base_class_mixin.dart';
import 'package:flutter_responsive/widget/custom_text_field.dart';
import 'package:flutter_responsive/widget/fingerprint.dart';

class TabletLoginScreen extends StatelessWidget with BaseClassMixin {
  TabletLoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 1,
        title: Text(
          "Tablet Login Screen",
          style: fontUtils.roboto.size16.bold(context, isSizeFixed: true),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              "images/ic_io.png",
              width: 300,
              height: 100,
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomTextField(
                        sizer: sizer,
                        hint: "Username",
                        width: 500,
                      ),
                      const SizedBox(height: 20),
                      CustomTextField(
                        sizer: sizer,
                        hint: "Password",
                        width: 500,
                      ),
                      const SizedBox(height: 20),
                      FingerPrint(sizer: sizer),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
