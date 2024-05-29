import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:schaffen/constants/app_colors.dart';

class ShareButton extends StatelessWidget {
  const ShareButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 4.5.h,
      width: 4.5.h,
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(3.w),
        border: Border.all(color: whilteColor),
      ),
      child: Center(
        child: Icon(
          Icons.share,
          color: whilteColor,
          size: 18.sp,
        ),
      ),
    );
  }
}
