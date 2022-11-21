import 'package:flutter/material.dart';
import 'package:material3_show_case/data_widgets_example.dart';
import 'package:material3_show_case/widgets/widgets.dart';

import '../router/app_routes.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "home_screen";

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuOptions = AppRoutes.optionsMenu;
    final ThemeData themeData = Theme.of(context);
    // final bool materialTheme = Theme.of(context).useMaterial3;

    return Scaffold(
      floatingActionButton: const BtnChangeMaterial(),
      appBar: AppBar(
        title: const Text('Material Desing'),
      ),
      body: Column(
        children: [
          const SizedBox(height:20),
          Text(
            'Show Case Material 2 vs 3',
            style: themeData.textTheme.titleLarge,
          ),
          const SizedBox(height: 20),
          Flexible(
            child: GridView.builder(
              padding:const  EdgeInsets.only(bottom:50.0, left: 20, right: 20),
              itemCount: menuOptions.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10),
              itemBuilder: (BuildContext context, int i) {
                return GestureDetector(
                  onTap: () =>
                      Navigator.pushNamed(context, menuOptions[i].route),
                  child: Card(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(menuOptions[i].icon, size: 50),
                        const SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            textAlign: TextAlign.center,
                            menuOptions[i].title,
                            style: themeData.textTheme.titleLarge,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),



        ],
      ),
    );
  }
}
