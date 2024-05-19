import 'package:flutter/material.dart';
import 'package:moniepoint_real_estate/common/app_bottom_nav.dart';
import 'package:moniepoint_real_estate/configs/assets.gen.dart';
import 'package:moniepoint_real_estate/constants/app_colors.dart';
import 'package:moniepoint_real_estate/home_page.dart';
import 'package:moniepoint_real_estate/maps_page.dart';

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int currentPage = 2;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AnimatedSwitcher(
          duration: const Duration(milliseconds: 500),
          child: IndexedStack(
            index: currentPage,
            key: ValueKey<int>(currentPage),
            children: [
              const MapsPage(),
              Container(
                color: AppColors.whiteF8F,
              ),
              const HomePage(),
              Container(
                color: AppColors.whiteF8F,
              ),
              Container(
                color: AppColors.whiteF8F,
              ),
            ],
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: TweenAnimationBuilder<Offset>(
            tween: Tween(
              begin: const Offset(0, 100),
              end: Offset.zero,
            ),
            curve: Curves.easeInBack,
            duration: const Duration(seconds: 1),
            builder: (context, value, child) {
              return Transform.translate(
                offset: value,
                child: AppBottomNavBar(
                  currentPage: currentPage,
                  icons: [
                    Assets.icons.searchFilled.svg(
                      colorFilter: const ColorFilter.mode(
                          AppColors.whiteF8F, BlendMode.srcIn),
                    ),
                    Assets.icons.messages.svg(
                      colorFilter: const ColorFilter.mode(
                          AppColors.whiteF8F, BlendMode.srcIn),
                    ),
                    Assets.icons.home.svg(
                      colorFilter: const ColorFilter.mode(
                          AppColors.whiteF8F, BlendMode.srcIn),
                    ),
                    Assets.icons.heart.svg(
                      colorFilter: const ColorFilter.mode(
                          AppColors.whiteF8F, BlendMode.srcIn),
                    ),
                    Assets.icons.profile.svg(
                      colorFilter: const ColorFilter.mode(
                          AppColors.whiteF8F, BlendMode.srcIn),
                    ),
                  ],
                  onPageSelected: (page) {
                    currentPage = page;
                    setState(() {});
                  },
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
