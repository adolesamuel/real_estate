import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moniepoint_real_estate/configs/assets.gen.dart';
import 'package:moniepoint_real_estate/constants/app_colors.dart';

class MapTextField extends StatelessWidget {
  const MapTextField({super.key});

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(100.r),
    );
    return Row(
      children: [
        Expanded(
          child: TextField(
            controller: TextEditingController(text: 'Saint Petersburg'),
            decoration: InputDecoration(
                filled: true,
                fillColor: AppColors.whiteF8F,
                border: border,
                prefixIcon: Assets.icons.search.svg(
                  fit: BoxFit.scaleDown,
                  colorFilter:
                      const ColorFilter.mode(AppColors.black, BlendMode.srcIn),
                ),
                hintText: 'Find City'),
          ),
        ),
        8.horizontalSpace,
        Container(
          height: 55,
          width: 55,
          decoration: const BoxDecoration(
            color: AppColors.whiteF8F,
            shape: BoxShape.circle,
          ),
          child: Assets.icons.settings.svg(
            fit: BoxFit.scaleDown,
            colorFilter:
                const ColorFilter.mode(AppColors.black, BlendMode.srcIn),
          ),
        ),
      ],
    );
  }
}
