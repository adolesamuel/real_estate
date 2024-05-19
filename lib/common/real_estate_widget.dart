import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moniepoint_real_estate/common/real_estate_widget_button.dart';

class RealEstateWidget extends StatelessWidget {
  final String house1;
  final String house2;
  final String house3;
  const RealEstateWidget({
    super.key,
    required this.house1,
    required this.house2,
    required this.house3,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(32.r),
          ),
          height: 250.h,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Image.asset(
                house1,
                width: double.infinity,
                height: 250.h,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 12.h),
                child: const RealEstateWidgetButton(
                  text: 'Gladkova St., 25',
                ),
              ),
            ],
          ),
        ),
        10.verticalSpace,
        Row(
          children: [
            Expanded(
              child: Container(
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(32.r),
                ),
                height: 200.h,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Image.asset(
                      house2,
                      height: double.infinity,
                      fit: BoxFit.cover,
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 8.w, vertical: 6.h),
                      child: const RealEstateWidgetButton(
                        text: 'Trefelva St., 25',
                      ),
                    ),
                  ],
                ),
              ),
            ),
            10.horizontalSpace,
            Expanded(
              child: Container(
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(32.r),
                ),
                height: 200.h,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Image.asset(
                      house3,
                      height: double.infinity,
                      fit: BoxFit.cover,
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 8.w, vertical: 6.h),
                      child: const RealEstateWidgetButton(
                        text: 'Modlo St., 25',
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        10.verticalSpace,
      ],
    );
  }
}
