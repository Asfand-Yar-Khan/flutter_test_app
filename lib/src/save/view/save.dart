import 'package:flutter/material.dart';

class Save extends StatefulWidget {
  const Save({super.key});

  @override
  State<Save> createState() => _SaveState();
}

class _SaveState extends State<Save> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.bookmark,
            size: 56,
            color: Colors.brown,
          ),
          Text("Comming Soon")
        ],
      ),
    );
  }
}
