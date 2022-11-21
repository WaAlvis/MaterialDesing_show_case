import 'package:flutter/material.dart';

class AppBarShowCase extends StatelessWidget implements PreferredSizeWidget {
  const AppBarShowCase({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('Show Case Material '),
    );
  }
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
