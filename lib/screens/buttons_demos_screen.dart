import 'package:flutter/material.dart';
import 'package:material3_show_case/data_widgets_example.dart';
import 'package:material3_show_case/models/case_widget_show.dart';

import '../widgets/widgets.dart';

class ButtonsDemoScreen extends StatelessWidget {
  const ButtonsDemoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: const AppBarShowCase(),
      body:

      Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            SectionViewWidgetExample(
              textTheme,
              titleSection: 'TextButton Widget',
              listCaseWidgets: DataWidgetExample.listTextButtons,
            ),
            const SizedBox(
              height: 10,
            ),
            SectionViewWidgetExample(
              textTheme,
              titleSection: 'OutlinedButton Widget',
              listCaseWidgets: DataWidgetExample.listOutlinedButtons,
            ),
            const SizedBox(
              height: 10,
            ),
            SectionViewWidgetExample(
              textTheme,
              titleSection: 'ElevatedButton Widget',
              listCaseWidgets: DataWidgetExample.listElevatedButtons,
            ),
            SectionViewWidgetExample(
              textTheme,
              titleSection: 'FloatingActionButton Widget',
              listCaseWidgets: DataWidgetExample.listFabButtons,
            ),
          ],
        ),
      ),
    );
  }
}

