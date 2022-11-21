import 'package:flutter/material.dart';
import 'package:material3_show_case/data_widgets_example.dart';
import 'package:material3_show_case/widgets/widgets.dart';

import '../widgets/section_view_widget_example.dart';

class DialogsDemoScreen extends StatelessWidget {
  const DialogsDemoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Show Case Material 3'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: SectionTitleCaseWidget(
            title: 'AlertDialog Widget',
            caseWidget:  Center(
              child: DialogExample(),
            ),
          ),
        ),
      ),
    );
  }
}

class DialogExample extends StatelessWidget {
  const DialogExample({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text('Title AlertDialog'),
          content:
              const Text('This is a short description for the popup alert'),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'Cancel'),
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context, 'OK'),
              child: const Text('OK'),
            ),
          ],
        ),
      ),
      child: const Text('Show AlertDialog Widget'),
    );
  }
}
