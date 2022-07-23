import 'package:flutter/material.dart';
import 'package:flutter_responsive/utils/sizer_manager.dart';

class CustomTextField extends StatelessWidget {
  final String hint;
  final SizerManager sizer;
  final double width;

  const CustomTextField({
    Key? key,
    required this.hint,
    required this.sizer,
    this.width = double.infinity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: sizer.getFixedSize(10)),
        width: width,
        color: Colors.grey.withOpacity(0.3),
        child: TextFormField(
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hint,
          ),
        ),
      ),
    );
  }
}
