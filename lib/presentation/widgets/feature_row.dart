import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:schaffen/constants/app_colors.dart';

class FeatureRow extends StatelessWidget {
  const FeatureRow(
      {super.key,
      required this.leading,
      required this.title,
      required this.isRed});
  final String leading;
  final String title;
  final bool isRed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: SvgPicture.string(
        leading,
        height: 6.w,
        color: isRed ? appColor : kBlackColor,
      ),
      title: Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 15.5.sp,
          color: isRed ? appColor : kBlackColor,
        ),
      ),
    );
  }
}
