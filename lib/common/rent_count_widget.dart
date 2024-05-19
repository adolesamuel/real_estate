import 'package:countup/countup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:real_estate/constants/app_colors.dart';

class RentCountWidget extends StatelessWidget {
  const RentCountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      tween: Tween<double>(begin: 0, end: 1),
      duration: const Duration(seconds: 1),
      curve: Curves.easeInOutBack,
      builder: (context, value, child) {
        return Transform.scale(
          scale: value,
          child: Container(
            height: 220.r,
            width: 220.r,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(32.r),
              color: AppColors.whiteF8F,
            ),
            child: Column(
              children: [
                20.verticalSpace,
                Text(
                  'RENT',
                  style: TextStyle(
                    fontSize: 18.sp,
                    color: AppColors.brownA49,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                25.verticalSpace,
                Countup(
                  begin: 0,
                  end: 2212,
                  duration: const Duration(seconds: 2),
                  style: TextStyle(
                    fontSize: 40.sp,
                    color: AppColors.brownA49,
                    fontWeight: FontWeight.bold,
                  ),
                  separator: " ",
                ),
                Text(
                  'offers',
                  style: TextStyle(
                    fontSize: 18.sp,
                    color: AppColors.brownA49,
                    fontWeight: FontWeight.w400,
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
