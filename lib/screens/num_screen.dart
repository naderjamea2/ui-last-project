import 'package:flutter/material.dart';
import 'package:flutter_project_ui/data/dummy.dart';
import 'package:flutter_project_ui/ui_widget/ColHand.dart';
import 'package:flutter_project_ui/ui_widget/ContainerShape.dart';
import 'package:flutter_project_ui/ui_widget/top_ui.dart';

class NumScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal.shade600,
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pushNamed(context, '/LastScreen');
        }, icon: Icon(Icons.segment,size: 33,),),
        elevation: 0,
        backgroundColor: Colors.teal.shade600,
      ),
      body: Center(
        child: Stack(
          children: [
            Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ContainerShape(),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30),
                        topLeft: Radius.circular(30),
                      ),
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        ColHand(),
                        SizedBox(height: 12,),
                        Divider(height: 2, color: Colors.grey,thickness: 1,indent: 20, endIndent: 20,),
                        Padding(
                          padding: const EdgeInsets.only(right: 240,top: 20),
                          child: Text('Top Authors', style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold,),),
                        ),

                        SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                                children: to.map((e){
                                  return TopUi(tops: e);
                                }).toList()
                            ))

                      ],
                    ),

                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
