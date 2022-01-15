import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_project_ui/models/hand.dart';

class HandUi extends StatelessWidget {
  Hand use;
  HandUi({this.use});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8,left: 12),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                image: DecorationImage(image: NetworkImage(use.imgHand) , fit: BoxFit.cover,),
                border: Border.all(width: 1,color: Colors.grey),
                borderRadius: BorderRadius.circular(20),

              ),
            ),

            SizedBox(width: 40,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [

              Text(use.type,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 22),),
              SizedBox(height: 10,),
              Text(use.author,style: TextStyle(color: Colors.grey, fontSize: 18 ),),
            ],)
          ],
        ),
      ),
    );
  }
}
