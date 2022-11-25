import 'package:flutter/material.dart';
import 'package:material3_show_case/widgets/section_title_case_widget.dart';
import 'package:material3_show_case/widgets/widgets.dart';


class ChipsDemoScreen extends StatefulWidget {
  const ChipsDemoScreen({Key? key}) : super(key: key);

  @override
  State<ChipsDemoScreen> createState() => _ChipsDemoScreenState();
}

class _ChipsDemoScreenState extends State<ChipsDemoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarShowCase(),
      floatingActionButton: const BtnChangeMaterial(),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            SectionTitleCaseWidget(
              title: 'Chips Widget',
              caseWidget: BasicChip(),
            ),
            SectionTitleCaseWidget(
              title: 'ActionChip Widget',
              caseWidget: BasicActionsChips(),
            ),
            SectionTitleCaseWidget(
              title: 'InputChips Widget',
              caseWidget: BasicInputsChips(),
            ),
            SizedBox(
              height: 30,
            ),
            SectionTitleCaseWidget(
              title: 'Chips List Show Case',
              caseWidget: ExampleChips(),
            ),
          ],
        ),
      ),
    );
  }
}

class BasicInputsChips extends StatefulWidget {
  const BasicInputsChips({
    super.key,
  });

  @override
  State<BasicInputsChips> createState() => _BasicInputsChipsState();
}

class _BasicInputsChipsState extends State<BasicInputsChips> {
  bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InputChip(
          avatar: const CircleAvatar(

            child: Text('C'),
          ),
          label: Text(
            'InputChip',
            style: TextStyle(color: _isSelected ? Colors.white : Colors.black),
          ),
          selected: _isSelected,
          selectedColor: Colors.blue.shade600,
          onSelected: (bool selected) {
            setState(() {
              if (!_isSelected) _isSelected = selected;
            });
          },
          onDeleted: () {
            if (_isSelected) _isSelected = false;
            setState(() {});
          },
        ),
        const SizedBox(
          width: 12,
        ),
        InputChip(
          avatar: const CircleAvatar(
            child: Text('D'),
          ),
          label: const Text(
            'Disable',
          ),
          selectedColor: Colors.blue.shade600,
          isEnabled: false,
        ),
      ],
    );
  }
}

class BasicChip extends StatelessWidget {
  const BasicChip({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Chip(
      avatar: CircleAvatar(
        // backgroundColor: Colors.white70,
        child: Text('W'),
      ),
      label: Text(
        'Chip',
      ),
    );
  }
}

class BasicActionsChips extends StatelessWidget {
  const BasicActionsChips({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    snackBar(String msj) {
      return SnackBar(
        content: Text('$msj Acttion!'),
      );
    }

    return Row(
      children: [
        ActionChip(
          avatar: const CircleAvatar(
            child: Icon(
              Icons.add_alert,
              size: 15,
            ),
          ),
          label: const Text('ActionChip'),
          onPressed: () {
            ScaffoldMessenger.of(context)
                .showSnackBar(snackBar('ActionChip Message'));
          },
        ),
        const SizedBox(
          width: 12,
        ),
        const ActionChip(
          avatar: CircleAvatar(
            child: Icon(
              Icons.do_not_disturb_on_outlined,
              size: 15,
            ),
          ),
          label: Text('Disable'),
        )
      ],
    );
  }
}

class ExampleChips extends StatelessWidget {
  const ExampleChips({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 6.0,
      // runSpacing: 6.0,
      children: <Widget>[
        _buildChip(
          'Gamer',
        ),
        _buildChip(
          'Developer',
        ),
        _buildChip(
          'Player',
        ),
        _buildChip(
          'Racer',
        ),
        _buildChip(
          'Traveller',
        ),
      ],
    );
  }
}

Widget _buildChip(
  String label,
) {
  return Chip(
    avatar: CircleAvatar(
      child: Text(label[0].toUpperCase()),
    ),
    label: Text(
      label,
    ),
    // backgroundColor: color,
  );
}
