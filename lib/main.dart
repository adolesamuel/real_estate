import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moniepoint_real_estate/configs/fonts.gen.dart';
import 'package:moniepoint_real_estate/constants/app_colors.dart';
import 'package:moniepoint_real_estate/constants/constants.dart';
import 'package:moniepoint_real_estate/rootpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(
        Constants.designWidth,
        Constants.designHeight,
      ),
      builder: (context, _) => MaterialApp(
        title: 'Real Estate M',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: AppColors.orangeFC9),
          useMaterial3: true,
          fontFamily: FontFamily.euclidCircularA,
          iconButtonTheme: IconButtonThemeData(
            style: IconButton.styleFrom(
              foregroundColor: AppColors.whiteF8F,
              backgroundColor: Colors.white.withOpacity(0.5),
              minimumSize: const Size(45, 45),
              iconSize: 20,
            ),
          ),
          textButtonTheme: TextButtonThemeData(
            style: TextButton.styleFrom(
              foregroundColor: AppColors.whiteF8F,
              backgroundColor: Colors.white.withOpacity(0.5),
              minimumSize: const Size(45, 45),
            ),
          ),
        ),
        home: const RootPage(),
      ),
    );
  }
}
