import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:schaffen/constants/app_colors.dart';

class UserTile extends StatefulWidget {
  const UserTile({super.key});

  @override
  State<UserTile> createState() => _UserTileState();
}

class _UserTileState extends State<UserTile> {
  bool isFollowing = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: CircleAvatar(
        radius: 6.w,
        backgroundImage: const AssetImage(
          'assets/images/user_img.webp',
        ),
      ),
      title: const Text(
        'Yashika',
        style: TextStyle(
          fontWeight: FontWeight.w500,
        ),
      ),
      subtitle: const Text('29, India'),
      trailing: InkWell(
        onTap: () {
          setState(() {
            isFollowing = !isFollowing;
          });
        },
        child: Container(
          width: 30.w,
          height: 3.8.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4.w),
            color: isFollowing ? const Color(0xFFAAABAB) : appColor,
          ),
          child: Center(
            child: Text(
              isFollowing ? 'Following' : 'Add',
              style: TextStyle(
                color: Colors.white,
                fontSize: 15.5.sp,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
