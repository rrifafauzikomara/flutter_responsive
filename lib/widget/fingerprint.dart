import 'package:flutter/material.dart';
import 'package:flutter_responsive/utils/sizer_manager.dart';

class FingerPrint extends StatelessWidget {
  final SizerManager sizer;

  const FingerPrint({Key? key, required this.sizer}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.blue,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(30)),
        ),
        padding: EdgeInsets.all(sizer.getFixedSizeOf(context, 10)),
        height: sizer.getFixedSizeOf(context, 70),
        width: sizer.getFixedSizeOf(context, 70),
        child: Image.asset("images/ic_fingerprint.png"),
      ),
    );
  }
}
