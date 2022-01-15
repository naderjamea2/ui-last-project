import 'package:flutter/material.dart';

class LastUi extends StatelessWidget {
  // const LastUi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(30),
      child: Row(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSuIz7km6uQcqB-oqWsitRBAgC6tJmxG6o1lw&usqp=CAU'),

          ),

          SizedBox(width: 20,),

          Column(
            children: [
              Text('Jane Rose',style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
              SizedBox(height: 3,),
              Text('24K Follwers',style: TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.normal),),

            ],
          ),
        ],

      ),
    );
  }
}
