import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/settings_provider.dart';

class ThemeBottomSheet extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var settingsProvider=Provider.of<SettingProvider>(context);

    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: (){
                    settingsProvider.changeTheme(ThemeMode.light);
                  },
                    child: Text('Light',style: Theme.of(context).textTheme.headline4?.copyWith(color: Theme.of(context).accentColor),)),
                Icon(Icons.check,color: Theme.of(context).accentColor,),
              ],
            ),
            const SizedBox(height: 16,),
            InkWell(
              onTap: (){
                settingsProvider.changeTheme(ThemeMode.dark);
              },
                child: Text('Dark',style: Theme.of(context).textTheme.headline4)),
          ],
        ),
      ),
    );
  }
}
