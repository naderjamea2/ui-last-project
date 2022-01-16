import 'package:flutter/material.dart';
import 'package:flutter_project_ui/models/product.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';

class ProductWidget extends StatelessWidget {
  final Products products;

  ProductWidget({this.products});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5.r),
      child: Column(
        children: [
          CircleAvatar(
            radius: 33.r,
            backgroundImage: NetworkImage(products.imgUrl),
          ),
          SizedBox(height: 8.h),
          Text(
            products.title.tr,
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
