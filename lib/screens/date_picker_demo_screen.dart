import 'package:flutter/material.dart';
import 'package:material3_show_case/widgets/widgets.dart';

class DatePickerDemoScreen extends StatelessWidget {
  const DatePickerDemoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:const  AppBarShowCase(),
      floatingActionButton: const BtnChangeMaterial(),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: Column(
        children: [
          SectionTitleCaseWidget(
            title: 'DatePicker Widget',
            caseWidget: Column(
              children: const [
                 Text('DatePicker Example XDDDDDDDDDD...'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
