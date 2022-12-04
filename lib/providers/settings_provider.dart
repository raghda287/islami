import 'package:flutter/material.dart';

class SettingProvider extends ChangeNotifier{
  ThemeMode currentMode=ThemeMode.light;

  void changeTheme(ThemeMode newMode){
    currentMode=newMode;
    notifyListeners();
  }
  String getMainBackground(){
    return currentMode==ThemeMode.light
    ? 'assets/images/main_background.png'
        :  'assets/images/dark_bg.png';

  }
}