import 'package:flutter/material.dart';
import 'package:material3_show_case/widgets/widgets.dart';

class InProgressScreen extends StatelessWidget {
  const InProgressScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const  AppBarShowCase(),
      body: Center(
        child: Text('Page in progress...'),
      ),
    );
  }
}
