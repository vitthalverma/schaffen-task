import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:schaffen/constants/app_colors.dart';
import 'package:schaffen/presentation/widgets/feature_row.dart';

class DisplayBottomSheet {
  diaplayBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      builder: (context) {
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 1.h, horizontal: 4.w),
          child: SizedBox(
            height: 22.h,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: .6.h,
                      width: 30.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.w),
                        color: kBlackColor,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 1.h),
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: Icon(
                    Icons.link_outlined,
                    size: 21.sp,
                  ),
                  title: Text(
                    'Invite',
                    style: TextStyle(fontSize: 17.sp),
                  ),
                ),
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: Icon(
                    Icons.person_add_outlined,
                    size: 21.sp,
                  ),
                  title: Text(
                    'Add Member',
                    style: TextStyle(fontSize: 17.sp),
                  ),
                ),
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: Icon(
                    Icons.group_add_outlined,
                    size: 21.sp,
                  ),
                  title: Text(
                    'Add Group',
                    style: TextStyle(fontSize: 17.sp),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
