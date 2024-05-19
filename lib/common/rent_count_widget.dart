import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moniepoint_real_estate/constants/app_colors.dart';

class RentCountWidget extends StatelessWidget {
  const RentCountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
          Text(
            "2 212",
            style: TextStyle(
              fontSize: 40.sp,
              color: AppColors.brownA49,
              fontWeight: FontWeight.bold,
            ),
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
    );
  }
}
