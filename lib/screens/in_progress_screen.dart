import 'package:flutter/material.dart';
import 'package:material3_show_case/widgets/appbar_show_case.dart';

class InProgresScreen  extends StatelessWidget {
  const InProgresScreen ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const  Scaffold(
      appBar: AppBarShowCase(),
      body: Center(
        child: Text('In Progres Screen ...'),
      ),
    );
  }
}
