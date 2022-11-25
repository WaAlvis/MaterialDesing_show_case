import 'package:flutter/material.dart';
import 'package:material3_show_case/models/case_widget_show.dart';

class SectionViewWidgetExample extends StatelessWidget {
  final TextTheme textTheme;
  final String titleSection;
  final List<CaseWidgetShow> listCaseWidgets;

  const SectionViewWidgetExample(
    this.textTheme, {
    super.key,
    required this.titleSection,
    required this.listCaseWidgets,
  });

  @override
  Widget build(BuildContext context) {
    List<Column> listW = listCaseWidgets
        .map((e) => Column(
              children: [
                e.showWidget,
                const SizedBox(
                  height: 2,
                ),
                Text(e.name, style: textTheme.bodySmall),
              ],
            ))
        .toList();
    return Flexible(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:20.0),
            child: Text(
              titleSection,
              style: textTheme.titleLarge,
            ),
          ),
          const Padding(
            padding:  EdgeInsets.symmetric(horizontal:20.0),
            child:  Divider(),
          ),
          Expanded(
            child: ListView.separated(
              padding: EdgeInsets.symmetric(horizontal:20.0),
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: listW.length,
              itemBuilder: (BuildContext context, int i) {
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    listCaseWidgets[i].showWidget,
                    const SizedBox(
                      height: 2,
                    ),
                    ConstrainedBox(
                      constraints:
                          BoxConstraints.loose(const Size.square(100)),
                      child: Text(
                        listCaseWidgets[i].name,
                        // softWrap: false,
                        style: textTheme.bodySmall,

                        maxLines: 2,
                      ),
                    ),
                  ],
                );
              },
              separatorBuilder: (BuildContext context, int index) =>
                  const SizedBox(width: 12),
            ),
          ),
        ],
      ),
    );
  }
}
