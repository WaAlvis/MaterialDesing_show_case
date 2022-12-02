import 'package:flutter/material.dart';
import 'package:material3_show_case/widgets/widgets.dart';

class InputsDemoScreen extends StatelessWidget {
  const InputsDemoScreen({Key? key}) : super(key: key);

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
                title: 'TextField Widget',
                caseWidget: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(

                          enabled: true,
                          hintText: 'hint',
                          helperText: 'helper',
                          labelText: 'label',
                          counterText: 'counter'),
                    ),
                   const  SizedBox(height: 50),
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                          enabled: true,
                          hintText: 'hint',
                          helperText: 'helper',
                          labelText: '-',
                          counterText: 'counter'),
                    ),
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
