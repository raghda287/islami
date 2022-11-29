import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/my_theme.dart';
import 'package:islami_app/quran/sura_details.dart';
import 'package:islami_app/quran/verse_item.dart';

class SuraDetailsScreen extends StatefulWidget {
  static const String routeName = 'SuraDetailsScreen';



  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var args =
    ModalRoute
        .of(context)
        ?.settings
        .arguments as SuraDetails;
    if (verses.isEmpty) {
      readFile(args.index);
    }
    return Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage('assets/images/main_background.png'),
          ),
        ),
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              args.name,
              style: Theme
                  .of(context)
                  .textTheme
                  .headline1,
            ),
          ),
          body: Container(
            margin:EdgeInsets.symmetric(vertical: 40,horizontal: 24),
            decoration: BoxDecoration(
              color: Colors.white60,
              borderRadius: BorderRadius.circular(24),

            ),
            child:
                verses.length==0? Center(child: CircularProgressIndicator(color: Theme.of(context).primaryColor,)):
            ListView.separated(
              itemBuilder: (context, index) => (VerseItem( verses[index],index+1)),
              itemCount: verses.length,
              separatorBuilder: (context, index) =>
              const Divider(
                thickness: 2,
                color: MyTheme.primaryColor,
              ),
            ),
          ),
        ));
  }

  void readFile(int index) async {
    String content = await rootBundle.loadString(
        'assets/files/${index + 1}.txt');
    List<String> lines = content.split('\n');
    setState(() {
      verses = lines;
    });
  }
}
