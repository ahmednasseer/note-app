import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CoustomNoteCard extends StatelessWidget {
  const CoustomNoteCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.deepPurpleAccent,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        children: [
          ListTile(
            contentPadding: EdgeInsets.all(0),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(FontAwesomeIcons.trash as IconData?, size: 20),
              color: Colors.black,
            ),
            title: Text(
              'ss',
              style: TextStyle(fontSize: 26, color: Colors.black),
            ),

            subtitle: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'data',
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
              'may22,2222',
              style: TextStyle(
                fontSize: 16,
                color: const Color.fromARGB(133, 0, 0, 0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
