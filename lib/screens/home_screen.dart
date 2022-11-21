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
    final bool textTheme = Theme.of(context).useMaterial3;

    return Scaffold(
      floatingActionButton: const BtnChangeMaterial(),
      appBar: AppBar(
        title: const Text('Material Desing'),
      ),
      body: Column(
        children: [
          SizedBox(height:20),
          Text(
            'Show Case Material 2 vs 3',
            style: textTheme.titleLarge,
          ),
          const SizedBox(height: 20),
          Flexible(
            child: GridView.builder(
              padding:const  EdgeInsets.only(bottom:50.0, right:10.0, left:10.0),
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
                    color: DataWidgetExample.listColors[i],
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
                            style: textTheme.titleLarge,
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
