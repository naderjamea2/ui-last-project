

import 'package:flutter/material.dart';
import 'package:flutter_project_ui/models/topAuthors.dart';

class TopUi extends StatelessWidget {
  TopAuthors tops;


  TopUi({this.tops});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Column(
        children: [

          CircleAvatar(radius: 40, backgroundImage: NetworkImage(tops.imgAuthors),),
          SizedBox(height: 14,),
          
          Text(tops.topAuthors,style: TextStyle(color: Colors.black,fontSize: 12),)





        ],
      ),
    );
  }
}
