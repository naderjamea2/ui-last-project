import 'package:flutter/material.dart';
import 'package:flutter_project_ui/data/dummy.dart';
import 'package:flutter_project_ui/ui_widget/ColHand.dart';
import 'package:flutter_project_ui/ui_widget/ContainerShape.dart';
import 'package:flutter_project_ui/ui_widget/top_ui.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';

class NumScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal.shade600,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pushNamed(context, '/LastScreen');
          },
          icon: Icon(
            Icons.segment,
            size: 25.r,
          ),
        ),
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
                        topRight: Radius.circular(30.r),
                        topLeft: Radius.circular(30.r),
                      ),
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        ColHand(),
                        SizedBox(height: 12.h),
                        Divider(
                          height: 2.h,
                          color: Colors.grey,
                          thickness: 1,
                          indent: 20,
                          endIndent: 20,
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.only(end: 240.w, top: 10.h),
                          child: Text(
                            'Top Authors'.tr,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Expanded(
                          child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                  children: to.map((e) {
                                return TopUI(tops: e);
                              }).toList())),
                        )
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
