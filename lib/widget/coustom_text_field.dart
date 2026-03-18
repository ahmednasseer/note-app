import 'package:app/widget/constant.dart';
import 'package:flutter/material.dart';

class CoustomTextField extends StatelessWidget {
  const CoustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: kprimaryColor,
      decoration: InputDecoration(
        hint: Text('data'),
        enabledBorder: buildborder(),
        focusedBorder: buildborder(kprimaryColor),
        border: buildborder(),
      ),
    );
  }

  OutlineInputBorder buildborder([Color]) => OutlineInputBorder(
    borderSide: BorderSide(color: Color ?? Colors.white),
    borderRadius: BorderRadius.circular(25),
  );
}
