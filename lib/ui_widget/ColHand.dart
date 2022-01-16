import 'package:flutter/material.dart';
import 'package:flutter_project_ui/data/dummy.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';

import 'hand_ui.dart';

class ColHand extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsetsDirectional.only(top: 20.h),
          child: Text(
            'hand_Picked'.tr,
            style: TextStyle(
                fontSize: 20.sp, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          margin: EdgeInsets.all(10.r),
          width: 50.w,
          height: 4.h,
          decoration: BoxDecoration(
              color: Colors.deepOrange,
              borderRadius: BorderRadius.circular(5.r)),
        ),
        SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(3.r),
            child: Column(
                children: hands.map((e) {
                  return HandUi(
                    use: e,
                  );
                }).toList()),
          ),
        )
      ],
    );
  }
}