import 'package:flutter/material.dart';

import '../bloc/bloc_theme.dart';


class BtnChangeMaterial extends StatefulWidget {
  const BtnChangeMaterial({
    Key? key,
  }) : super(key: key);

  @override
  State<BtnChangeMaterial> createState() => _BtnChangeMaterialState();
}

class _BtnChangeMaterialState extends State<BtnChangeMaterial> {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      elevation: 10,

      heroTag: 'btn change',
      onPressed: () {
        blocTheme.typeMaterial = !blocTheme.typeMaterial;
        blocTheme.changeTheme = blocTheme.typeMaterial;
        setState(() {       });
      },
      child: Text(
        //TODO
        blocTheme.typeMaterial? 'v2': 'v3'
      ),
    );
  }
}
