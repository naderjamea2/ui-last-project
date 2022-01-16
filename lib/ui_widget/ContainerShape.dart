import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContainerShape extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.r),
      width: 40.w,
      height: 4.h,
      decoration: BoxDecoration(
          color: Colors.grey, borderRadius: BorderRadius.circular(5.r)),
    );
  }
}
