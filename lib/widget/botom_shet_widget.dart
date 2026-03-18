import 'package:app/widget/coustom_text_field.dart';
import 'package:flutter/material.dart';

class Botomshetwidget extends StatelessWidget {
  const Botomshetwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          SizedBox(height: 24),
          Container(child: CoustomTextField()),
        ],
      ),
    );
  }
}
