import 'package:flutter/material.dart';
import 'package:islami_app/hadeth/hadeth_model.dart';
import 'package:islami_app/hadeth_details/hadeth_details_screen.dart';
import 'package:islami_app/quran/sura_details.dart';
import 'package:islami_app/quran/sura_details_screen.dart';

class HadethTitleWidget extends StatelessWidget {

HadethModel hadeth;
HadethTitleWidget(this.hadeth);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
Navigator.pushNamed(context, HadethDetailsScreen.routeName,arguments: hadeth);

      },
      child: Container(
        child: Center(
          child: Text(
            hadeth.title
            ,style: Theme.of(context).textTheme.headline2,
          ),
        ),
      ),
    );
  }
}
