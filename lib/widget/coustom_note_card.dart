import 'package:app/page/edit_note_view.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CoustomNoteCard extends StatelessWidget {
  const CoustomNoteCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return EditNoteView();
            },
          ),
        );
      },
      child: Container(
        padding: EdgeInsets.all(24),
        decoration: BoxDecoration(
          color: const Color.fromARGB(137, 192, 173, 246),
          borderRadius: BorderRadius.circular(25),
        ),
        child: Column(
          children: [
            ListTile(
              contentPadding: EdgeInsets.all(0),
              trailing: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.delete, size: 20, color: Colors.black),
                color: Colors.black,
              ),
              title: Text(
                'اكتب العنوان هنا ',
                style: TextStyle(fontSize: 26, color: Colors.black),
              ),

              subtitle: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'اكتب ما تريد هنا ',
                  style: TextStyle(
                    fontSize: 20,
                    color: const Color.fromARGB(133, 0, 0, 0),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'التاريخ',
                style: TextStyle(
                  fontSize: 16,
                  color: const Color.fromARGB(133, 0, 0, 0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
