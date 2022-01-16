import 'package:flutter_project_ui/data/dummy.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_ui/ui_widget/ColHand.dart';
import 'package:flutter_project_ui/ui_widget/ContainerShape.dart';
import 'package:flutter_project_ui/ui_widget/product_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal.shade600,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/NumScreen');
            },
            icon: Icon(
              Icons.segment,
              size: 32.r,
            )),
        elevation: 0,
        backgroundColor: Colors.teal.shade600,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 35.h),
            Text(
              'browse'.tr,
              style: TextStyle(
                  fontSize: 30.sp,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              'find'.tr,
              style: TextStyle(color: Colors.white, fontSize: 16.sp),
            ),
            Padding(
              padding: EdgeInsets.all(15.r),
              child: Container(
                // margin: EdgeInsets.only(top: 20),
                alignment: Alignment.center,
                height: 80.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.r),
                ),

                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 1.w,
                          color: Colors.teal,
                        ),
                        borderRadius: BorderRadius.circular(30.r)),
                    hintText: 'type_Keyword'.tr,
                    hintStyle: TextStyle(color: Colors.white.withOpacity(0.7)),
                    filled: true,
                    fillColor: Colors.grey.withOpacity(0.6),
                    contentPadding: EdgeInsetsDirectional.only(start: 30.w),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(12.r),
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
                      topLeft: Radius.circular(24.r),
                      topRight: Radius.circular(24.r)),
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
