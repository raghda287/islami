import 'package:flutter/material.dart';
import 'package:islami_app/my_theme.dart';

class TasbihScreen extends StatefulWidget {

  @override
  State<TasbihScreen> createState() => _TasbihScreenState();
}

class _TasbihScreenState extends State<TasbihScreen> {
  int counter=0;
  String text="سبحان الله";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
        body: Center(
          child: Column(
            children: [
              Image.asset('assets/images/tasbeeh_image.png',height: 270,),
              const SizedBox(height: 50,),
              Text('Number of tasbeeh',style: TextStyle(fontSize: 20),),
              const SizedBox(height: 20,),

              Container(
width: 55,
                height: 60,
                decoration: BoxDecoration(

                  color: MyTheme.primaryColor,

                  borderRadius: BorderRadius.circular(25),
                ),
                child: Center(child:  Text("${counter}",style: const TextStyle(fontSize: 20),)),),
              const SizedBox(height: 30,),

              ElevatedButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                     )
                    ),
                      backgroundColor: MaterialStateProperty.all(MyTheme.primaryColor,)),
                  onPressed: (){
                    setState(() {
                      counter++;
                      if(counter==30){
                        counter=0;
                        text="الحمدلله";
                        counter++;

                      }
                    });
                  }, child: Text(text,style: TextStyle(fontSize: 30,),))
            ],
          ),
        ),
      ),
    );
  }
}
