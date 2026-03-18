import 'package:app/helper/coustom_icon.dart';
import 'package:flutter/material.dart';

class CoustomAppBar extends StatelessWidget {
  const CoustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(height: 30),
          Text(
            'Notes',
            style: TextStyle(
              color: Colors.white,
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          CoustomIcon(icon: Icon(Icons.search, size: 28)),
        ],
      ),
    );
  }
}
