import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:real_estate/constants/app_colors.dart';

class AppBottomNavBar extends StatelessWidget {
  final int currentPage;
  final void Function(int page)? onPageSelected;
  final List<Widget> icons;
  const AppBottomNavBar({
    super.key,
    required this.currentPage,
    this.onPageSelected,
    this.icons = const [],
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 40.h),
      child: SizedBox(
        height: 70,
        width: 330,
        child: Material(
          color: const Color(0xFF2B2B2B),
          borderRadius: BorderRadius.circular(100.r),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(
              icons.length,
              (index) {
                bool isSelected = index == currentPage;
                return InkWell(
                  onTap: () => onPageSelected?.call(index),
                  borderRadius: BorderRadius.circular(100.r),
                  child: AnimatedContainer(
                    height: isSelected ? 64.h : 54.h,
                    width: isSelected ? 64.h : 54.w,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: isSelected
                          ? AppColors.orangeFC9
                          : const Color(0xFF232220),
                    ),
                    duration: const Duration(milliseconds: 300),
                    child: Center(
                      child: SizedBox(
                        height: 25.h,
                        width: 25.w,
                        child: icons[index],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
