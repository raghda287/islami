import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingProvider extends ChangeNotifier{
  ThemeMode currentMode=ThemeMode.light;

  String appLanguage='en';

  void changeLanguage(String newLanguage)async{
    final pref=await SharedPreferences.getInstance();
if(newLanguage==appLanguage){
  return;
}
    appLanguage=newLanguage;
   pref.setString('language',newLanguage);
   notifyListeners();
}


  void changeTheme(ThemeMode newMode)async{
    final pref=await SharedPreferences.getInstance();
if(newMode==currentMode){
  return;
}
    currentMode=newMode;
    pref.setString('theme', currentMode==ThemeMode.dark?'dark':'light');
    notifyListeners();
  }
  String getMainBackground(){
    return currentMode==ThemeMode.light
    ? 'assets/images/main_background.png'
        :  'assets/images/dark_bg.png';

  }
   bool isDarkMode(){

    return currentMode==ThemeMode.dark;

  }
  bool isEnglish(){
    return appLanguage=='en';

  }
}