import 'package:flutter/cupertino.dart';

class VerseItem extends StatelessWidget {
  String text;
  int pos;
  VerseItem(this.text,this.pos);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8,vertical: 4),
      child: Text(
      '  $text ($pos)',
        textAlign: TextAlign.center,
        textDirection: TextDirection.rtl,

        style: TextStyle(
          fontSize: 18,
        ),
      ),
    );
  }
}
