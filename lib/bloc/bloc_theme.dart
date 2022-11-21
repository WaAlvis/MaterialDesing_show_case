import 'dart:async';

class BlocTheme {

  bool typeMaterial = false;

  final StreamController<bool> _themeController = StreamController<bool>();

  Stream<bool> get themeMaterial => _themeController.stream;

  set changeTheme(bool value) {
    _themeController.sink.add(value);
  }

  dispose() {
    _themeController.close();
  }
}


final BlocTheme blocTheme = BlocTheme();
