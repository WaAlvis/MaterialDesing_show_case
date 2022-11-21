import 'package:flutter/material.dart';
import 'package:material3_show_case/main.dart';

import 'models/case_widget_show.dart';

class DataWidgetExample {


  // Accesiblidad, colors, formas redondeas, Typografia
  // Dynami color, formas simplicificacion,
  // accesibilidad.
  static final List<CaseWidgetShow> exampleCard = [
    CaseWidgetShow(
        showWidget: Card(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const ListTile(
                leading: Icon(Icons.album),
                title: Text('The Enchanted Nightingale'),
                subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  TextButton(
                    child: const Text('BUY TICKETS'),
                    onPressed: () {
                      /* ... */
                    },
                  ),
                  const SizedBox(width: 8),
                  TextButton(
                    child: const Text('LISTEN'),
                    onPressed: () {
                      /* ... */
                    },
                  ),
                  const SizedBox(width: 8),
                ],
              ),
            ],
          ),
        ),
        name: 'name'),
    CaseWidgetShow(
        showWidget: Card(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const ListTile(
                leading: Icon(Icons.album),
                title: Text('The Enchanted Nightingale'),
                subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  TextButton(
                    child: const Text('BUY TICKETS'),
                    onPressed: () {
                      /* ... */
                    },
                  ),
                  const SizedBox(width: 8),
                  TextButton(
                    child: const Text('LISTEN'),
                    onPressed: () {
                      /* ... */
                    },
                  ),
                  const SizedBox(width: 8),
                ],
              ),
            ],
          ),
        ),
        name: 'name'),
  ];

  static final List<CaseWidgetShow> listFabButtons = [
    CaseWidgetShow(
        showWidget: FloatingActionButton.small(
          heroTag: 'fab.small',
            onPressed: () {
              // Add your onPressed code here!
            },
            child: const Icon(Icons.add)),
        name: '.small'),
    CaseWidgetShow(
        showWidget: FloatingActionButton(
          heroTag: 'fab icon',
          onPressed: () {},
          child: const Icon(Icons.add),
        ),
        name: ''),
    CaseWidgetShow(
        showWidget: FloatingActionButton.large(
            heroTag: 'fab.large',
            onPressed: () {
              // Add your onPressed code here!
            },
            child: const Icon(Icons.add)),
        name: '.large'),
    CaseWidgetShow(
        showWidget: FloatingActionButton(
          heroTag: 'fab',
          onPressed: () {},
          child: const Text('Button'),
        ),
        name: ''),
    CaseWidgetShow(
        showWidget: FloatingActionButton.extended(
          heroTag: 'fab.extended',
          onPressed: () {
            // Add your onPressed code here!
          },
          label: const Text('Approve'),
          icon: const Icon(Icons.thumb_up),
        ),
        name: '.extended'),
  ];

  static final List<CaseWidgetShow> listElevatedButtons = [
    CaseWidgetShow(
        showWidget: ElevatedButton(
          onPressed: () {},
          child: const Text('Button'),
        ),
        name: 'TextButton'),
    CaseWidgetShow(
        showWidget: ElevatedButton.icon(
          onPressed: () {},
          icon: const Icon(Icons.add),
          label: const Text('Button '),
        ),
        name: '.icon'),
    CaseWidgetShow(
        showWidget: const ElevatedButton(
          onPressed: null,
          child: Text('Button '),
        ),
        name: '*action: Null'),
  ];
  static final List<CaseWidgetShow> listTextButtons = [
    CaseWidgetShow(
        showWidget: TextButton(
          onPressed: () {},
          child: const Text('Button'),
        ),
        name: 'TextButton'),
    CaseWidgetShow(
        showWidget: TextButton.icon(
          onPressed: () {},
          icon: const Icon(Icons.add),
          label: const Text('Button '),
        ),
        name: '.icon'),
    CaseWidgetShow(
        showWidget: const TextButton(
          onPressed: null,
          child: Text(
            'Button ',
          ),
        ),
        name: '*action: Null'),
  ];
  static final List<CaseWidgetShow> listOutlinedButtons = [
    CaseWidgetShow(
        showWidget: OutlinedButton(
          onPressed: () {},
          child: const Text('Button'),
        ),
        name: 'TextButton'),
    CaseWidgetShow(
        showWidget: OutlinedButton.icon(
          onPressed: () {},
          icon: const Icon(Icons.add),
          label: const Text('Button '),
        ),
        name: '.icon'),
    CaseWidgetShow(
        showWidget: const OutlinedButton(
          onPressed: null,
          child: Text(
            'Button ',
          ),
        ),
        name: '*action: Null'),
  ];
}
