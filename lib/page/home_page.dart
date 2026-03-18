import 'package:app/widget/coustom_note_card.dart';
import 'package:app/widget/coustom_app_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [CoustomAppBar(), CoustomNoteCard.CoustomNoteCard()],
        ),
      ),
    );
  }
}
