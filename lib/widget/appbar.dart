import 'package:flutter/material.dart';

class AppBar extends StatelessWidget {
  const AppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Notes',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(25)),
            height: 35,
            width: 35,
            child: IconButton(onPressed: () {}, icon: Icon(Icons.delete)),
          ),
        ],
      ),
    );
  }
}
