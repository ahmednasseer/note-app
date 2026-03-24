import 'package:app/widget/constant.dart';
import 'package:app/widget/coustom_botom.dart';
import 'package:app/widget/coustom_text_field.dart';
import 'package:flutter/material.dart';

class Botomshetwidget extends StatelessWidget {
  const Botomshetwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 32),
            CoustomTextField(hint: 'العنوان', maxlines: 5),
            SizedBox(height: 55),
            CoustomTextField(hint: 'العنوان', maxlines: 5),
            SizedBox(height: 32),
            coustomboutoom(),
          ],
        ),
      ),
    );
  }
}
