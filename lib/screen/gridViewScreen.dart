import 'package:flutter/material.dart';

class GridViewScreen extends StatefulWidget {
  final String name; // Name passed to create the grid buttons

  const GridViewScreen({super.key, required this.name});

  @override
  State<GridViewScreen> createState() => _GridViewScreenState();
}

class _GridViewScreenState extends State<GridViewScreen> {
  // List to track the state of each button
  List<Map<String, dynamic>> buttons = [];

  @override
  void initState() {
    super.initState();
    // Initialize buttons based on the name length
    buttons = List.generate(widget.name.length, (index) {
      return {
        'isVisible': true,
        'color': Colors.blue,
        'clickCount': 0,
        'text': widget.name[index],
      };
    });
  }

  // Logic for button clicks: Change color on first click, hide on the second
  void _onButtonPressed(int index) {
    setState(() {
      if (buttons[index]['clickCount'] == 0) {
        buttons[index]['color'] = Colors.green; // First click: Change color
      } else {
        buttons[index]['isVisible'] = false; // Second click: Hide
      }
      buttons[index]['clickCount'] += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GridView of Name Characters'),
      ),
      body: GridView.count(
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 3, // Adjust number of columns as needed
        children: buttons.map((button) {
          return button['isVisible']
              ? ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: button['color'], // Button color
                  ),
                  onPressed: () => _onButtonPressed(buttons.indexOf(button)),
                  child: Text(button['text']),
                )
              : Container();
        }).toList(),
      ),
    );
  }
}
