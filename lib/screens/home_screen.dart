import 'package:flutter_project_ui/data/dummy.dart';
import 'package:flutter_project_ui/models/product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_ui/ui_widget/ColHand.dart';
import 'package:flutter_project_ui/ui_widget/ContainerShape.dart';
import 'package:flutter_project_ui/ui_widget/hand_ui.dart';
import 'package:flutter_project_ui/ui_widget/product_widget.dart';

class HomeScreen extends StatelessWidget {
  // const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal.shade600,
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pushNamed(context, '/NumScreen');
        }, icon: Icon(Icons.segment,size: 32,)),
        elevation: 0,
        backgroundColor: Colors.teal.shade600,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 50,
            ),
            Text(
              'Browse',
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Find Product that suit to your interest',
              style: TextStyle(color: Colors.white,fontSize: 16),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                // margin: EdgeInsets.only(top: 20),
                alignment: Alignment.center,
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),

                ),

                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 1,
                          color: Colors.teal,
                        ),
                        borderRadius: BorderRadius.circular(30)),
                    hintText: 'Type Keyword',
                    hintStyle: TextStyle(color: Colors.white.withOpacity(0.7)),
                    filled: true,
                    fillColor: Colors.grey.withOpacity(0.6),
                    contentPadding: EdgeInsets.only(left: 30),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                    children: pro.map((e) {
                  return ProductWidget(
                    products: e,
                  );
                }).toList()),
              ),
            ),
            ContainerShape(),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24)),
                ),
                width: double.infinity,
                child: SingleChildScrollView(
                  child: ColHand(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


