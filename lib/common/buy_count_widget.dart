import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moniepoint_real_estate/constants/app_colors.dart';

class BuyCountWidget extends StatelessWidget {
  const BuyCountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220.r,
      width: 220.r,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: AppColors.orangeFC9,
      ),
      child: Column(
        children: [
          20.verticalSpace,
          Text(
            'BUY',
            style: TextStyle(
              fontSize: 18.sp,
              color: AppColors.whiteF8F,
              fontWeight: FontWeight.w400,
            ),
          ),
          25.verticalSpace,
          Text(
            "1 034",
            style: TextStyle(
              fontSize: 40.sp,
              color: AppColors.whiteF8F,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'offers',
            style: TextStyle(
              fontSize: 18.sp,
              color: AppColors.whiteF8F,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
