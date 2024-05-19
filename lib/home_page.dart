import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moniepoint_real_estate/common/buy_count_widget.dart';
import 'package:moniepoint_real_estate/common/location_button.dart';
import 'package:moniepoint_real_estate/common/profile_widget.dart';
import 'package:moniepoint_real_estate/common/real_estate_widget.dart';
import 'package:moniepoint_real_estate/common/rent_count_widget.dart';
import 'package:moniepoint_real_estate/constants/app_colors.dart';
import 'package:moniepoint_real_estate/constants/constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> houses = Constants.houses;
    if (houses.length % 3 != 0) {
      houses = houses.sublist(0, (houses.length ~/ 3) * 3);
    }
    houses.shuffle();
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        backgroundColor: Colors.transparent,
        centerTitle: false,
        title: const LocationButton(),
        actions: [
          const ProfileWidget(),
          20.horizontalSpace,
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              AppColors.whiteF8F,
              AppColors.orangeF9D,
            ],
            stops: [0.2, 0.5],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: ListView(
          children: [
            kToolbarHeight.verticalSpace,
            40.verticalSpace,
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20.w,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hi, Marina',
                    style: TextStyle(
                      fontSize: 24.sp,
                      color: AppColors.greyA59,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  16.verticalSpace,
                  Text(
                    "let's select your\nperfect place",
                    style: TextStyle(
                      fontSize: 40.sp,
                      color: AppColors.black,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  50.verticalSpace,
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      BuyCountWidget(),
                      RentCountWidget(),
                    ],
                  ),
                ],
              ),
            ),
            34.verticalSpace,
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: AppColors.whiteF8F,
                borderRadius: BorderRadius.circular(32.r),
              ),
              child: Column(
                children: List.generate(houses.length ~/ 3, (index) {
                  final sublist = houses.sublist((3 * index), (3 * index) + 3);
                  return RealEstateWidget(
                    house1: sublist[0],
                    house2: sublist[1],
                    house3: sublist[2],
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
