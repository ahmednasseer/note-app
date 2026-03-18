import 'package:flutter/material.dart';

class CoustomIcon extends StatelessWidget {
  const CoustomIcon({required this.icon, super.key});
  final Icon icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(143, 255, 255, 255),
        borderRadius: BorderRadius.circular(16),
      ),
      height: 45,
      width: 45,
      child: Center(
        child: IconButton(onPressed: () {}, icon: icon),
      ),
    );
  }
}
