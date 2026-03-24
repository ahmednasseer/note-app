import 'package:app/widget/coustom_botom.dart';
import 'package:app/widget/coustom_text_field.dart';
import 'package:flutter/material.dart';

class Botomshetwidget extends StatelessWidget {
  const Botomshetwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(child: AddNoteForm()),
    );
  }
}

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? subtitle, title;
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          SizedBox(height: 32),
          CoustomTextField(
            hint: 'العنوان',
            maxlines: 5,
            onsaved: (value) {
              title = value;
            },
          ),
          SizedBox(height: 55),
          CoustomTextField(
            hint: 'العنوان',
            maxlines: 5,
            onsaved: (value) {
              subtitle = value;
            },
          ),
          SizedBox(height: 32),
          coustomboutoom(
            ontap: () {
              if (formkey.currentState!.validate()) {
                formkey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {
                  //قم بدراسه الاسطر اعلاه
                });
              }
              ;
            },
          ),
        ],
      ),
    );
  }
}
