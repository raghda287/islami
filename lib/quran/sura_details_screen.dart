import 'package:flutter/material.dart';
import 'package:islami_app/my_theme.dart';
import 'package:islami_app/quran/sura_details.dart';

class SuraDetailsScreen extends StatefulWidget {
static const String routeName='SuraDetailsScreen';

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    SuraDetails args=ModalRoute.of(context)?.settings.arguments as SuraDetails;
        return Container(
        decoration: const BoxDecoration(
        image: DecorationImage(
        fit: BoxFit.fill,
        image: AssetImage('assets/images/main_background.png'),
    ),
    ),
    child:Scaffold(
      appBar: AppBar(title: Text('islami',),),
      body: Padding(
        padding: const EdgeInsets.all(26.0),
        child: Card(
          color: Colors.white60,
          elevation: 0,

          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Text(args.name,style: Theme.of(context).textTheme.headline1,),
                SizedBox(width: 20,),
                Icon(Icons.not_started_sharp),
              ],),
              Divider(thickness: 1.5,color: MyTheme.primaryColor,),
            ],
          ),
        ),
      ),
    ));
  }
}
