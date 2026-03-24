import 'package:app/widget/constant.dart';
import 'package:flutter/material.dart';

class CoustomTextField extends StatelessWidget {
  final String hint;
  final int maxlines;
  const CoustomTextField({
    super.key,
    required this.hint,
    required this.maxlines,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: kprimaryColor,
      decoration: InputDecoration(
        hintMaxLines: maxlines,
        hintText: hint,
        enabledBorder: buildborder(),
        focusedBorder: buildborder(kprimaryColor),
        border: buildborder(),
      ),
    );
  }

  OutlineInputBorder buildborder([Color? color]) => OutlineInputBorder(
    borderSide: BorderSide(color: color ?? Colors.white),
    borderRadius: BorderRadius.circular(8), // يفضل تقليل الـ Radius للحقول
  );
}
