import 'package:app/widget/coustom_note_card.dart';
import 'package:flutter/material.dart';

class NotesList extends StatelessWidget {
  const NotesList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: const CoustomNoteCard(),
          );
        },
      ),
    );
  }
}
