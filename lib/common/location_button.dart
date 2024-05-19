import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:real_estate/configs/assets.gen.dart';
import 'package:real_estate/constants/app_colors.dart';

class LocationButton extends StatefulWidget {
  const LocationButton({super.key});

  @override
  State<LocationButton> createState() => _LocationButtonState();
}

class _LocationButtonState extends State<LocationButton>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return SizeTransition(
      axis: Axis.horizontal,
      sizeFactor: Tween<double>(begin: 0, end: 1).animate(
          CurvedAnimation(parent: animationController, curve: Curves.easeIn)),
      child: Material(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.r),
        child: InkWell(
          onTap: () {},
          borderRadius: BorderRadius.circular(8.r),
          child: SizedBox(
            height: 50.h,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.w),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Assets.icons.mapPin.svg(
                    colorFilter: const ColorFilter.mode(
                        AppColors.greyA59, BlendMode.srcIn),
                  ),
                  8.horizontalSpace,
                  Text(
                    'Saint Petersburg',
                    style: TextStyle(
                      fontSize: 19.sp,
                      color: AppColors.greyA59,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
