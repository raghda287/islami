import 'package:flutter/material.dart';

import '../my_theme.dart';

class HadethScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(

        children: [
          Image.asset('assets/images/hadeth.png'),
          const Divider(thickness: 3,color: MyTheme.primaryColor,),
          const Text('hadeth Name',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w700),),
          const Divider(thickness: 3,color: MyTheme.primaryColor,),

          Expanded(child: ListView.builder(
            shrinkWrap: false,
            physics:const BouncingScrollPhysics(),
            itemBuilder: (context,index)=>Text('first hadeth ',),
            itemCount:40,
          )),
        ],
      ),
    );
  }
}
