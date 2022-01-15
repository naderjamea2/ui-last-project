import 'package:flutter/material.dart';
import 'package:flutter_project_ui/models/product.dart';

class LastProduct extends StatelessWidget {
  // const LastProduct({Key? key}) : super(key: key);

  Products products;
  LastProduct({this.products});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        margin: EdgeInsets.all(12),
        child: Column(
          children: [
            CircleAvatar(

              radius: 30,
              backgroundImage: NetworkImage(products.imgUrl ),
            ),
            SizedBox(height: 12,),
            Text(products.title ,style: TextStyle(color: Colors.black),),
          ],
        ),
      ),
    );
  }
}
