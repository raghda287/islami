import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/hadeth/hadeth_model.dart';
import 'package:islami_app/hadeth/hadeth_title_widget.dart';

import '../my_theme.dart';

class HadethScreen extends StatefulWidget {
  @override
  State<HadethScreen> createState() => _HadethScreenState();
}

class _HadethScreenState extends State<HadethScreen> {
  List<HadethModel> allHadethItems=[];

  @override
  Widget build(BuildContext context) {
if(allHadethItems.isEmpty)
      readHadeth();

    return Scaffold(
      body: Column(
        children: [
          Image.asset('assets/images/hadeth.png'),

          Expanded(

              child:allHadethItems.isEmpty?
              Center(child: CircularProgressIndicator()):ListView.separated(
            shrinkWrap: false,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) => HadethTitleWidget(allHadethItems[index]
            ),
            itemCount: allHadethItems.length, separatorBuilder: (BuildContext context, int index) =>  Container(
                margin: const EdgeInsets.symmetric(horizontal: 26),
                color: MyTheme.lightPrimary,
                width: double.infinity,
                height: 1.5,
              ),
          )),
        ],
      ),
    );
  }

  void readHadeth() async {
List<HadethModel> allHadeth=[];
var fileContent = await rootBundle.loadString('assets/files/ahadeth.txt');
    //separate each hadeth with #
    var allHadethContent = fileContent.trim().split("#");

    for (int i = 0; i < allHadethContent.length; i++) {
      String SingleHadethContent=allHadethContent[i];
      var singleHadethLine=SingleHadethContent.trim().split('\r\n');
      String title=singleHadethLine[0];
      singleHadethLine.removeAt(0);
     String content= singleHadethLine.join('\n');
     HadethModel hadeth=HadethModel(title: title, content: content);
     allHadeth.add(hadeth);

setState(() {
allHadethItems=allHadeth;
});
    }
  }
}

