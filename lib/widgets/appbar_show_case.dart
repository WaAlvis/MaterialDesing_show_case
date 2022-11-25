import 'package:flutter/material.dart';

class AppBarShowCase extends StatelessWidget implements PreferredSizeWidget {
  final List<Widget>? actions;
  const AppBarShowCase({
    super.key, this.actions,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('Show Case Material '),
      actions: actions,
    );
  }
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
