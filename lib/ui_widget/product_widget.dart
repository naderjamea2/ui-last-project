import 'package:flutter/material.dart';
import 'package:flutter_project_ui/models/product.dart';

class ProductWidget extends StatelessWidget {
  // const ProductWidget({Key? key}) : super(key: key);
  Products products;
  ProductWidget({this.products});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      child: Column(
        children: [
          CircleAvatar(

            radius: 39,
            backgroundImage: NetworkImage(products.imgUrl ),
          ),
          SizedBox(height: 8,),
          Text(products.title ,style: TextStyle(color: Colors.white),),
        ],
      ),
    );
  }
}
