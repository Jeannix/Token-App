import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Switch(
          value: false,
          onChanged: (value) {
          },
        ),
      ),
    );
  }
}

  //
  // enum ThemeType {
  //   DARK, LIGHT
  // }
  //
  // class ThemeState extends ChangeNotifier {
  //   bool _isDarkTheme = false;
  //
  //   ThemeState() {
  //     getTheme().then((type) {
  //       _isDarkTheme = type == ThemeType.DARK;
  //       notifyListeners();
  //     });
  //   }
  //
  //   ThemeType get theme => _isDarkTheme ? ThemeType.DARK : ThemeType.LIGHT;
  //   set theme (ThemeType type) => setTheme(type);
  //
  //   void setTheme(ThemeType type) async {
  //     _isDarkTheme = type == ThemeType.DARK;
  //     notifyListeners();
  //   }
  //
  //   Future<ThemeType> getTheme() async {
  //     return _isDarkTheme ? ThemeType.DARK : ThemeType.LIGHT;
  //   }
  // }