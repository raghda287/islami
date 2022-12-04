import 'package:flutter/material.dart';
import 'package:islami_app/hadeth/hadeth_screen.dart';
import 'package:islami_app/providers/settings_provider.dart';
import 'package:islami_app/quran/quran_screen.dart';
import 'package:islami_app/radio/radio_screen.dart';
import 'package:islami_app/settings/settings_screen.dart';
import 'package:islami_app/tasbih/tasbih_screen.dart';
import 'package:provider/provider.dart';


class HomeScreen extends StatefulWidget {
  static const String routeName = 'home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    var settingsProvider=Provider.of<SettingProvider>(context);
    return Container(
      decoration:  BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage( settingsProvider.getMainBackground(),
          ),
        ),
      ),
      child: Scaffold(
        body: tabs[selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
                backgroundColor:Theme.of(context).primaryColor,

                icon:const ImageIcon(AssetImage('assets/images/quran.png')),
                label: 'quran'),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/radio.png')),
                label: 'Radio'),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/sebha.png')),
                label: 'Tasbeh'),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/all_quran.png')),
                label: 'hadeth'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: 'Settings'),
          ],
        ),
        appBar: AppBar(
          title: const Text('islami'),
        ),
      ),
    );
  }

  List<Widget> tabs = [
    QuranScreen(),
    RadioScreen(),
    TasbihScreen(),
    HadethScreen(),
    SettingsScreen(),
  ];
}
