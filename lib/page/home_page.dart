import 'package:app/helper/coustom_icon.dart';
import 'package:app/widget/botom_shet_widget.dart';
import 'package:app/widget/coustom_app_bar.dart';
import 'package:app/widget/notes_list_view.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // الـ FloatingActionButton مكانه الصحيح هنا
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            context: context,
            builder: (context) => const Botomshetwidget(),
          );
        },
        child: const Icon(Icons.add),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            const SizedBox(height: 50), // مسافة للأعلى
            const CoustomAppBar(customtitle: 'Notes', icon: Icon(Icons.search)),
            const NotesList(), // الـ Expanded موجود داخله بالفعل
          ],
        ),
      ),
    );
  }
}
