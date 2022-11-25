import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:material3_show_case/data_widgets_example.dart';
import 'package:material3_show_case/router/app_routes.dart';

import 'bloc/bloc_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: blocTheme.themeMaterial,
      builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Material 2 vs 3 Show Case',
          theme: ThemeData(
            useMaterial3: snapshot.data, // Material 3 -- flag --
            dividerColor: Theme.of(context).colorScheme.secondary
          ),
          initialRoute: AppRoutes.initialRoute,
          routes: AppRoutes.getAppRoutes(),
        );
      },
    );
  }
}
