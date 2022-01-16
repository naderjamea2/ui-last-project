import 'package:flutter/material.dart';
import 'package:flutter_project_ui/models/topAuthors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';

class TopUI extends StatelessWidget {
  final TopAuthors tops;

  TopUI({this.tops});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(18.r),
      child: Column(
        children: [
          CircleAvatar(
            radius: 38.r,
            backgroundImage: NetworkImage(tops.imgAuthors),
          ),
          SizedBox(height: 10.h),
          Text(
            tops.topAuthors.tr,
            style: TextStyle(color: Colors.black, fontSize: 12.sp),
          )
        ],
      ),
    );
  }
}
