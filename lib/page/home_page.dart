import 'package:app/widget/botom_shet_widget.dart';
import 'package:app/widget/coustom_app_bar.dart';
import 'package:app/widget/notes_list_view.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            CoustomAppBar(),
            NotesList(),
            FloatingActionButton(
              onPressed: () {
                showBottomSheet(
                  context: context,
                  builder: (context) {
                    return Botomshetwidget();
                  },
                );
              },
              child: Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}
