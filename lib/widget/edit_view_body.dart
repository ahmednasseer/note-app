import 'package:app/widget/coustom_app_bar.dart';
import 'package:app/widget/coustom_botom.dart';
import 'package:app/widget/coustom_text_field.dart';
import 'package:flutter/material.dart';

class EditViewBody extends StatelessWidget {
  const EditViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),

      child: Column(
        children: [
          SizedBox(height: 50),
          CoustomAppBar(customtitle: 'editnote', icon: Icon(Icons.check)),
          SizedBox(height: 50),
          CoustomTextField(
            hint: 'العنوان',
            maxlines: 5,
            onsaved: (String? p1) {},
          ),
          SizedBox(height: 50),
          CoustomTextField(
            hint: 'الموضوع',
            maxlines: 15,
            onsaved: (String? p1) {},
          ),
          coustomboutoom(),
        ],
      ),
    );
  }
}
