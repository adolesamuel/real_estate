import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moniepoint_real_estate/configs/assets.gen.dart';
import 'package:moniepoint_real_estate/constants/app_colors.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
        tween: Tween<double>(begin: 0, end: 1),
        duration: const Duration(milliseconds: 500),
        builder: (context, value, child) {
          return Transform.scale(
            scale: value,
            child: Container(
              height: 57.h,
              width: 57.w,
              clipBehavior: Clip.hardEdge,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  colors: [
                    AppColors.orangeD17,
                    AppColors.orangeE69,
                  ],
                ),
              ),
              child: Column(
                children: [
                  8.verticalSpace,
                  Assets.images.profileImage.image(
                    fit: BoxFit.contain,
                    height: 48.h,
                  ),
                ],
              ),
            ),
          );
        });
  }
}
