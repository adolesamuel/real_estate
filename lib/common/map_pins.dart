import 'package:flutter/material.dart';
import 'package:real_estate/configs/assets.gen.dart';
import 'package:real_estate/constants/app_colors.dart';

class MapPins extends StatelessWidget {
  const MapPins({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
          bottomRight: Radius.circular(16),
        ),
        color: AppColors.orangeFC9,
      ),
      child: Assets.icons.building.svg(
        fit: BoxFit.scaleDown,
        colorFilter: const ColorFilter.mode(
          AppColors.whiteF8F,
          BlendMode.srcIn,
        ),
      ),
    );
  }
}
