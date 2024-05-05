import 'package:flutter/material.dart';

class GridViewScreen extends StatefulWidget {
  const GridViewScreen({super.key});

  @override
  State<GridViewScreen> createState() => _GridViewScreenState();
}

class _GridViewScreenState extends State<GridViewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: 100,
            height: 100,
            decoration:
                const BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
          ),
          Container(
            width: 100,
            height: 100,
            decoration:
                const BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
          ),
          Container(
            width: 100,
            height: 100,
            decoration:
                const BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
          ),
          Container(
            width: 100,
            height: 100,
            decoration:
                const BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
          ),
          Container(
            width: 100,
            height: 100,
            decoration:
                const BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
          )
        ],
      ),
    );
  }
}
