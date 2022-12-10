import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/hadeth/hadeth_model.dart';
import 'package:islami_app/my_theme.dart';

class HadethItem extends StatelessWidget {
HadethModel hadeth;
HadethItem(this.hadeth);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8,vertical: 4),
      child: Text(
      hadeth.content,
        textAlign: TextAlign.center,
        textDirection: TextDirection.rtl,

        style: Theme.of(context).textTheme.headline4,
      ),
    );
  }
}
