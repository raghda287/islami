import 'package:flutter/material.dart';
import 'package:islami_app/hadeth/hadeth_model.dart';
import 'package:islami_app/hadeth_details/hadeth_item.dart';
import 'package:islami_app/providers/settings_provider.dart';
import 'package:provider/provider.dart';

class HadethDetailsScreen extends StatelessWidget {
  static const String routeName='hadethDetails';
  const HadethDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var args=ModalRoute.of(context)?.settings.arguments as HadethModel;
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
          appBar: AppBar(
            title: Text(
             args.title,
              style: Theme
                  .of(context)
                  .textTheme
                  .headline2,
            ),
          ),
          body: Container(
            width: double.infinity,
            height: double.infinity,
            child: Card(
              color:Theme.of(context).cardColor,
              elevation: 10,
              margin:EdgeInsets.symmetric(vertical: 66,horizontal: 24),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              child:HadethItem(args),

            ),
          ),
        ));
  }
}
