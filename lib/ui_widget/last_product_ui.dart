import 'package:flutter/material.dart';
import 'package:flutter_project_ui/models/product.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';

class LastProduct extends StatelessWidget {
  final Products products;

  LastProduct({this.products});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.r),
      child: Container(
        margin: EdgeInsets.all(10.r),
        child: Column(
          children: [
            CircleAvatar(
                radius: 30.r, backgroundImage: NetworkImage(products.imgUrl)),
            SizedBox(height: 12.h),
            Text(
              products.title.tr,
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
