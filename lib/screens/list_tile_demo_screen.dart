import 'package:flutter/material.dart';
import 'package:material3_show_case/data_widgets_example.dart';
import 'package:material3_show_case/widgets/widgets.dart';

import '../widgets/section_view_widget_example.dart';

class ListTileDemoScreen extends StatelessWidget {
  const ListTileDemoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: const AppBarShowCase(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SectionTitleCaseWidget(
          title: 'ListTile Widget',
          caseWidget: Flexible(
            child: ListView(
              children: const <Widget>[
                Card(child: ListTile(title: Text('One-line ListTile'))),
                Card(
                  child: ListTile(
                    leading: FlutterLogo(),
                    title: Text('One-line with leading widget'),
                  ),
                ),
                Card(
                  child: ListTile(
                    title: Text('One-line with trailing widget'),
                    trailing: Icon(Icons.more_vert),
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: FlutterLogo(),
                    title: Text('One-line with both widgets'),
                    trailing: Icon(Icons.more_vert),
                  ),
                ),
                Card(
                  child: ListTile(
                    title: Text('One-line dense ListTile'),
                    dense: true,
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: FlutterLogo(size: 56.0),
                    title: Text('Two-line ListTile'),
                    subtitle: Text('Here is a second line'),
                    trailing: Icon(Icons.more_vert),
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: FlutterLogo(size: 72.0),
                    title: Text('Three-line ListTile'),
                    subtitle: Text(
                        'A sufficiently long subtitle warrants three lines.'
                    ),
                    trailing: Icon(Icons.more_vert),
                    isThreeLine: true,
                  ),
                ),
              ],
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
