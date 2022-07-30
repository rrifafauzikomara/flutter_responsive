import 'package:flutter/material.dart';
import 'package:flutter_responsive/utils/font_utils.dart';
import 'package:flutter_responsive/utils/sizer_manager.dart';

class CustomButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onTap;
  final FontUtils fontUtils;
  final SizerManager sizer;
  final double width;
  final double height;

  const CustomButton({
    Key? key,
    required this.buttonText,
    required this.onTap,
    required this.fontUtils,
    required this.sizer,
    this.width = double.infinity,
    this.height = 47,
  }) : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Material(
        color: Colors.white,
        child: InkWell(
          onTap: onTap,
          child: Container(
            width: width,
            height: sizer.getFixedSizeOf(context, height),
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.all(
                Radius.circular(1.5),
              ),
            ),
            child: Text(
              buttonText,
              style: fontUtils.roboto.size14.regular(
                context,
                color: Colors.white,
                isSizeFixed: true,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
