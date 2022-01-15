import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_ui/data/dummy.dart';
import 'package:flutter_project_ui/ui_widget/last_product_ui.dart';
import 'package:flutter_project_ui/ui_widget/last_ui.dart';
import 'package:flutter_project_ui/ui_widget/product_widget.dart';

class LastScreen extends StatelessWidget {
  // const LastScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTdkEyioCeJYTXLUgjnfLR7mldVab1G9zBI9Q&usqp=CAU',
                    fit: BoxFit.fill,
                    width: double.infinity,
                  ),
                  Positioned(
                    top: 20,
                    left: 6,
                    child: IconButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/NumScreen');
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.all(17),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Minimalism ',
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Lifestyle ',
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),

                    // CircleAvatar(radius: 30, backgroundColor: Colors.deepOrange,),

                    SizedBox(
                      width: 90,
                    ),

                    Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                          // color: Colors.black,
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQMGnCfM9yrkXJy5jvysBQHbKVewO9SvcwyTw&usqp=CAU'),
                              fit: BoxFit.cover),
                          shape: BoxShape.circle,
                          border:
                              Border.all(width: 1, color: Colors.deepOrange),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.orange.shade50,
                                blurRadius: 0.9,
                                offset: Offset(1, 0),
                                spreadRadius: 12),
                          ]),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Being the savage\' bowsman , that is the person who pulied the bow- car in his boat present adequate information on various aspects ',
                  style: TextStyle(fontSize: 14),
                ),
              ),
              Divider(
                height: 0.6,
                color: Colors.grey,
                thickness: 0.3,
                endIndent: 12,
                indent: 12,
              ),
              LastUi(),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return LastProduct(
                      products: pro[index],
                    );
                  },
                  itemCount: pro.length,
                  scrollDirection: Axis.horizontal,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
