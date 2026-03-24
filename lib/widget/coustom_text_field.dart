import 'package:app/widget/constant.dart';
import 'package:flutter/material.dart';

class CoustomTextField extends StatelessWidget {
  final String hint;
  final int maxlines;
  final void Function(String?)? onsaved;
  const CoustomTextField({
    super.key,
    required this.hint,
    required this.maxlines,
    required this.onsaved,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onsaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'برجاء ادخل ملاحظتك';
        }
      },
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
    borderRadius: BorderRadius.circular(8),
  );
}
