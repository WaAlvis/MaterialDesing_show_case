import 'package:flutter/material.dart';
import 'package:material3_show_case/widgets/widgets.dart';

class DropDownDemoScreen extends StatelessWidget {
  const DropDownDemoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarShowCase(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: SectionTitleCaseWidget(
                title: 'Dropdown Widgets',
                caseWidget: Column(
                  children: [
                    Text('Dropdown Widgets example...')
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
