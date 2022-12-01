import 'package:flutter/material.dart';
import 'package:material3_show_case/widgets/btn_change_material.dart';

class DropdownButtonScreen extends StatelessWidget {
  const DropdownButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dropdown Button"),
      ),
      floatingActionButton: const BtnChangeMaterial(),
      body: const Center(
        child: DropdownButtonExample(),
      ),
    );
  }
}

const List<String> list = <String>[
  'Element One',
  'Element Two',
  'Element Three',
  'Element Four',
];

class DropdownButtonExample extends StatefulWidget {
  const DropdownButtonExample({super.key});

  @override
  State<DropdownButtonExample> createState() => _DropdownButtonExampleState();
}

class _DropdownButtonExampleState extends State<DropdownButtonExample> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.arrow_drop_down_circle_outlined),
      elevation: 16,
      style: const TextStyle(color: Colors.black87, fontSize: 18.0),
      underline: Container(
        height: 2,
        color: Colors.blueAccent,
      ),
      onChanged: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value!;
        });
      },
      iconSize: 24.0,
      iconEnabledColor: Colors.blueAccent,
      // isExpanded: true,
      items: list.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
