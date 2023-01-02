
import 'package:flutter/material.dart';
class CustomTextFromField extends StatelessWidget {
  dynamic width;
  dynamic height;
  CustomTextFromField({
    super.key,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5)
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal : 5.0),
          child: TextFormField(
            decoration: const InputDecoration(
              border: InputBorder.none
            ),
          ),
        ),
      ),
    );
  }
}