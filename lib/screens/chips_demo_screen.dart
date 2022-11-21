import 'package:flutter/material.dart';
import 'package:material3_show_case/data_widgets_example.dart';
import 'package:material3_show_case/widgets/section_title_case_widget.dart';
import 'package:material3_show_case/widgets/widgets.dart';

import '../widgets/section_view_widget_example.dart';

class ChipsDemoScreen extends StatelessWidget {
  const ChipsDemoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    chipList() {
      return Wrap(
        spacing: 6.0,
        runSpacing: 6.0,
        children: <Widget>[
          _buildChip('Gamer', const Color(0xFFff6666)),
          _buildChip('Hacker', const Color(0xFF007f5c)),
          _buildChip('Developer', const Color(0xFF5f65d3)),
          _buildChip('Racer', const Color(0xFF19ca21)),
          _buildChip('Traveller', const Color(0xFF60230b)),
        ],
      );
    }

    actionChipList(BuildContext context) {
      return Wrap(
        spacing: 6.0,
        runSpacing: 6.0,
        children: <Widget>[
          _buildActiomChip(context, 'Gamer', const Color(0xFFff6666)),
          _buildActiomChip(context, 'Hacker', const Color(0xFF007f5c)),
          _buildActiomChip(context, 'Developer', const Color(0xFF5f65d3)),
          _buildActiomChip(context, 'Racer', const Color(0xFF19ca21)),
          _buildActiomChip(context, 'Traveller', const Color(0xFF60230b)),
        ],
      );
    }

    snackBar(String msj) {
      return SnackBar(
        content: Text('$msj Acttion!'),
      );
    }

    final TextTheme textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: const AppBarShowCase(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SectionTitleCaseWidget(
              title: 'Chips Widget',
              bodySection: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _easyChip(),
                  const SizedBox(
                    height: 20,
                  ),
                  chipList(),
                ],
              ),
            ),
            SectionTitleCaseWidget(
              title: 'ActionChip Widget',
              bodySection: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const _RowActionsChips(),
                  const SizedBox(
                    height: 20,
                  ),
                  actionChipList(context),
                ],
              ),
            ),
            SectionTitleCaseWidget(
              title: 'Chips Widget',
              bodySection: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _easyChip(),
                  const SizedBox(
                    height: 20,
                  ),
                  chipList(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Chip _easyChip() {
    return const Chip(
      labelPadding: EdgeInsets.all(2.0),
      avatar: CircleAvatar(
        // backgroundColor: Colors.white70,
        child: Text('W'),
      ),
      label: Text(
        'Widget Chip',
      ),
    );
  }
}

class _RowActionsChips extends StatelessWidget {
  const _RowActionsChips({
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
          padding: const EdgeInsets.all(2.0),
          avatar: const CircleAvatar(
            child: Icon(
              Icons.mode_comment,
              size: 18,
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
          padding: EdgeInsets.all(2.0),
          avatar: CircleAvatar(
            child: Icon(
              Icons.mode_comment,
              size: 18,
            ),
          ),
          label: Text('Disable'),
        )
      ],
    );
  }
}

Widget _buildChip(String label, Color color) {
  return Chip(
    labelPadding: const EdgeInsets.all(2.0),
    avatar: CircleAvatar(
      backgroundColor: Colors.white70,
      child: Text(label[0].toUpperCase()),
    ),
    label: Text(
      label,
      style: const TextStyle(
        color: Colors.white,
      ),
    ),
    backgroundColor: color,
    elevation: 6.0,
    shadowColor: Colors.grey[60],
    padding: const EdgeInsets.all(8.0),
  );
}

Widget _buildActiomChip(
  BuildContext context,
  String label,
  Color color,
) {
  snackBar(String msj) {
    return SnackBar(
      content: Text('$msj Acttion!'),
    );
  }

  return ActionChip(
    labelPadding: const EdgeInsets.all(2.0),
    avatar: CircleAvatar(
      backgroundColor: Colors.white70,
      child: Text(label[0].toUpperCase()),
    ),
    label: Text(
      label,
      style: const TextStyle(
        color: Colors.white,
      ),
    ),
    onPressed: () {
      ScaffoldMessenger.of(context)
          .showSnackBar(snackBar('ActionChip Event'));
    },
    backgroundColor: color,
    elevation: 6.0,
    shadowColor: Colors.grey[60],
    padding: const EdgeInsets.all(8.0),
  );
}
