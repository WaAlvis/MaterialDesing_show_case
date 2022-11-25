import 'package:flutter/material.dart';
import 'package:material3_show_case/data_widgets_example.dart';
import 'package:material3_show_case/models/case_widget_show.dart';

import '../widgets/widgets.dart';

class NavigationBarDemoScreen extends StatefulWidget {
  const NavigationBarDemoScreen({Key? key}) : super(key: key);

  @override
  State<NavigationBarDemoScreen> createState() =>
      _NavigationBarDemoScreenState();
}

class _NavigationBarDemoScreenState extends State<NavigationBarDemoScreen> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  final List<Widget> _widgetOptions = <Widget>[
    Container(
      color: Colors.grey.shade200,
      child: const Text(
        ' Home',
        style: optionStyle,
      ),
    ),
    Container(
      color: Colors.grey.shade200,
      child: const Text(
        ' Business',
        style: optionStyle,
      ),
    ),
    Container(
      color: Colors.grey.shade200,
      child:const  Text(
        ' School',
        style: optionStyle,
      ),
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<Widget> actions = [
    IconButton(
      icon: const Icon(Icons.add_alert),
      tooltip: 'Show Snackbar',
      onPressed: () {},
    ),
    IconButton(
      icon: const Icon(Icons.attach_file),
      onPressed: () {},
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    return Scaffold(
      floatingActionButton: const BtnChangeMaterial(),
      appBar: PreferredSize(
        preferredSize: Theme.of(context).useMaterial3
            ? Size.fromHeight(80.0)
            : Size.fromHeight(55),
        child: AppBar(
          title: Text('Show Material'),
          actions: actions,
        ),
      ),
      body: Center(
        child: Theme.of(context).useMaterial3
            ? listNavBar()[_selectedIndex]
            : _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Theme.of(context).useMaterial3
          ? buildNavigationBar()
          : buildBottomNavigationBar(),
    );
  }

  NavigationBar buildNavigationBar() {
    return NavigationBar(
      onDestinationSelected: (int index) {
        setState(() {
          _selectedIndex = index;
        });
      },
      selectedIndex: _selectedIndex,
      destinations: const <Widget>[
        NavigationDestination(
          icon: Icon(Icons.explore),
          label: 'Explore',
        ),
        NavigationDestination(
          icon: Icon(Icons.commute),
          label: 'Commute',
        ),
        NavigationDestination(
          selectedIcon: Icon(Icons.bookmark),
          icon: Icon(Icons.bookmark_border),
          label: 'Saved',
        ),
      ],
    );
  }

  List<Widget> listNavBar() {
    return <Widget>[
      Container(
        color: Colors.grey.shade200,
        alignment: Alignment.center,
        child: const Text(
          'Explore',
          style: optionStyle,
        ),
      ),
      Container(
        color: Colors.grey.shade200,
        alignment: Alignment.center,
        child: const Text(
          'Commute',
          style: optionStyle,
        ),
      ),
      Container(
        color: Colors.grey.shade200,
        alignment: Alignment.center,
        child: const Text(
          'Saved',
          style: optionStyle,
        ),
      ),
    ];
  }

  BottomNavigationBar buildBottomNavigationBar() {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.business),
          label: 'Business',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.school),
          label: 'School',
        ),
      ],
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
    );
  }
}
