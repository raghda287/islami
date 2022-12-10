import 'package:flutter/material.dart';
import 'package:islami_app/hadeth_details/hadeth_details_screen.dart';
import 'package:islami_app/home_screen.dart';
import 'package:islami_app/my_theme.dart';
import 'package:islami_app/providers/settings_provider.dart';
import 'package:islami_app/quran/sura_details_screen.dart';
import 'package:islami_app/splash_screen.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {

  runApp(ChangeNotifierProvider(
      create: (BuildContext context)=>SettingProvider(),
      child:  MyApp()));

}

class MyApp extends StatelessWidget {
  late SettingProvider settingProvider;

  void getValueFromSharedPreferences() async {
    final pref = await SharedPreferences.getInstance();
    settingProvider.changeLanguage(pref.getString('language') ?? 'en');
    if (pref.getString('theme') == 'dark') {
      settingProvider.changeTheme(ThemeMode.dark);
    } else if (pref.getString('theme') == 'light') {
      settingProvider.changeTheme(ThemeMode.light);
    }
  }
      @override
      Widget build(BuildContext context) {
    getValueFromSharedPreferences();
         settingProvider = Provider.of<SettingProvider>(context);
        return MaterialApp(
          locale: Locale(settingProvider.appLanguage),
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          theme: MyTheme.lightTheme,
          darkTheme: MyTheme.darkTheme,
          themeMode: settingProvider.currentMode,
          debugShowCheckedModeBanner: false,
          routes: {
            SplashScreen.routeName: (_) => SplashScreen(),
            HomeScreen.routeName: (_) => HomeScreen(),
            SuraDetailsScreen.routeName: (_) => SuraDetailsScreen(),
            HadethDetailsScreen.routeName: (_) => HadethDetailsScreen(),
          },
          initialRoute: SplashScreen.routeName,
        );
      }
    }



