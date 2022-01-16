import 'package:flutter/material.dart';
import 'package:flutter_project_ui/data/dummy.dart';
import 'package:flutter_project_ui/ui_widget/last_product_ui.dart';
import 'package:flutter_project_ui/ui_widget/last_ui.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';

class LastScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Stack(
                children: [
                  Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTdkEyioCeJYTXLUgjnfLR7mldVab1G9zBI9Q&usqp=CAU',
                    fit: BoxFit.fill,
                    width: double.infinity,
                  ),
                  PositionedDirectional(
                    top: 35.h,
                    start: 6.w,
                    child: IconButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/NumScreen');
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        size: 25.r,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.h),
              Container(
                margin: EdgeInsets.all(17.r),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Minimalism '.tr,
                          style: TextStyle(
                              fontSize: 26.sp,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Lifestyle '.tr,
                          style: TextStyle(
                              fontSize: 26.sp,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(width: 80.w),
                    Container(
                      width: 70.r,
                      height: 70.r,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQMGnCfM9yrkXJy5jvysBQHbKVewO9SvcwyTw&usqp=CAU'),
                            fit: BoxFit.cover,
                          ),
                          shape: BoxShape.circle,
                          border:
                              Border.all(width: 1, color: Colors.deepOrange),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.orange.shade50,
                                blurRadius: 0.9.r,
                                offset: Offset(1, 0),
                                spreadRadius: 12.r),
                          ]),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              Padding(
                padding: EdgeInsets.all(16.r),
                child: Text(
                  'des'.tr,
                  style: TextStyle(fontSize: 14.sp),
                ),
              ),
              Divider(
                height: 0.6.h,
                color: Colors.grey,
                thickness: 0.3,
                endIndent: 12,
                indent: 12,
              ),
              LastUi(),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return LastProduct(
                      products: pro[index],
                    );
                  },
                  itemCount: pro.length,
                  scrollDirection: Axis.horizontal,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
