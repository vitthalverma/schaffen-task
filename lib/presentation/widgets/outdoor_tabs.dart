import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:schaffen/constants/app_colors.dart';
import 'package:schaffen/presentation/widgets/outdoor_container.dart';

class OutdoorTabs extends StatelessWidget {
  const OutdoorTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const OutDoorContainer(),
        const OutDoorContainer(),
        const OutDoorContainer(),
        const OutDoorContainer(),
        Container(
          width: 10.w,
          height: 3.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.w),
            border: Border.all(
              color: appColor,
            ),
          ),
          child: Center(
            child: Text(
              '+1',
              style: TextStyle(
                color: appColor,
                fontSize: 14.sp,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
