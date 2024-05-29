import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:schaffen/constants/app_colors.dart';

class OutDoorContainer extends StatelessWidget {
  const OutDoorContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 18.w,
      height: 3.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.w),
        border: Border.all(
          color: appColor,
        ),
      ),
      child: Center(
        child: Text(
          'Outdoor',
          style: TextStyle(
            color: appColor,
            fontSize: 14.sp,
          ),
        ),
      ),
    );
  }
}
