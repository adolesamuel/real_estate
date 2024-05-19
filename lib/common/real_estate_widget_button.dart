import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moniepoint_real_estate/constants/app_colors.dart';

class RealEstateWidgetButton extends StatelessWidget {
  final String text;
  const RealEstateWidgetButton({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color(0xFFD0BCA6).withOpacity(0.6),
      clipBehavior: Clip.hardEdge,
      borderRadius: BorderRadius.circular(100.r),
      child: InkWell(
        onTap: () {},
        child: SizedBox(
          height: 58,
          child: Stack(
            children: [
              BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                child: const SizedBox(
                  height: 58,
                ),
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      text,
                      style: TextStyle(
                        fontSize: 19.sp,
                        color: AppColors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  height: 55,
                  width: 58,
                  margin: const EdgeInsets.symmetric(
                    horizontal: 1.0,
                    vertical: 2.0,
                  ),
                  decoration: const BoxDecoration(
                    color: AppColors.orangeFBF,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.greyA5A,
                        blurRadius: 14,
                        spreadRadius: 8,
                        offset: Offset(0, 0),
                      )
                    ],
                  ),
                  child: const Icon(Icons.chevron_right_outlined),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
