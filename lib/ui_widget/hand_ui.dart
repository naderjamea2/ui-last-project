import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_ui/models/hand.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';

class HandUi extends StatelessWidget {
  final Hand use;

  HandUi({this.use});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(bottom: 8.h, start: 12.w),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: 100.r,
              height: 100.r,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(use.imgHand),
                  fit: BoxFit.cover,
                ),
                border: Border.all(width: 1, color: Colors.grey),
                borderRadius: BorderRadius.circular(20.r),
              ),
            ),
            SizedBox(width: 15.w),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  use.type.tr,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 22.sp,
                  ),
                ),
                SizedBox(height: 10.h),
                Text(
                  use.author.tr,
                  style: TextStyle(color: Colors.grey, fontSize: 18.sp),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
