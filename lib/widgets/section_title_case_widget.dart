import 'package:flutter/material.dart';

class SectionTitleCaseWidget extends StatelessWidget {
  final String title;
  final Widget bodySection;

  const SectionTitleCaseWidget(
      {Key? key, required this.title, required this.bodySection})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;

    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            title,
            style: textTheme.titleLarge,
          ),
          const Divider(),
          bodySection,
        ],
      ),
    );
  }
}
