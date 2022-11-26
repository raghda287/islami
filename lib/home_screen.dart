import 'package:flutter/material.dart';
import 'package:islami_app/hadeth/hadeth_screen.dart';
import 'package:islami_app/quran/quran_screen.dart';
import 'package:islami_app/radio/radio_screen.dart';
import 'package:islami_app/tasbih/tasbih_screen.dart';

import 'my_theme.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage('assets/images/main_background.png'),
        ),
      ),
      child: Scaffold(
        body: tabs[selectedIndex],
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(canvasColor: MyTheme.primaryColor),
          child: BottomNavigationBar(
            currentIndex: selectedIndex,
            onTap: (index) {
              setState(() {
                selectedIndex = index;
              });
            },
            items:const [
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/quran.png')),
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
            ],
          ),
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
  ];
}
