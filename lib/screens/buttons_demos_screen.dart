import 'package:flutter/material.dart';
import 'package:material3_show_case/data_widgets_example.dart';

import '../widgets/widgets.dart';

class ButtonsDemoScreen extends StatelessWidget {
  const ButtonsDemoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: const AppBarShowCase(),
      floatingActionButton: const BtnChangeMaterial(),
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 20),
          BtnWidgetExample(
            textTheme,
            titleSection: 'TextButton Widget',
            listCaseWidgets: DataWidgetExample.listTextButtons,
          ),
          const SizedBox(
            height: 10,
          ),
          BtnWidgetExample(
            textTheme,
            titleSection: 'OutlinedButton Widget',
            listCaseWidgets: DataWidgetExample.listOutlinedButtons,
          ),
          const SizedBox(
            height: 10,
          ),
          BtnWidgetExample(
            textTheme,
            titleSection: 'ElevatedButton Widget',
            listCaseWidgets: DataWidgetExample.listElevatedButtons,
          ),
          BtnWidgetExample(
            textTheme,
            titleSection: 'FloatingActionButton Widget',
            listCaseWidgets: DataWidgetExample.listFabButtons,
          ),
        ],
      ),
    );
  }
}
