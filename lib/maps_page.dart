import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:real_estate/common/map_text_field.dart';
import 'package:real_estate/configs/assets.gen.dart';
import 'package:real_estate/constants/app_colors.dart';
import 'package:photo_view/photo_view.dart';

class MapsPage extends StatefulWidget {
  const MapsPage({super.key});

  @override
  State<MapsPage> createState() => _MapsPageState();
}

class _MapsPageState extends State<MapsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.light,
        backgroundColor: Colors.transparent,
        title: const MapTextField(),
      ),
      body: Stack(
        children: [
          PhotoView(
            imageProvider: AssetImage(
              Assets.images.map.path,
            ),
            maxScale: 10.0,
            minScale: 1.0,
            strictScale: true,
            enableRotation: true,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.all(32.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TweenAnimationBuilder(
                            tween: Tween<double>(begin: 0, end: 1),
                            duration: const Duration(milliseconds: 500),
                            builder: (context, value, child) {
                              return Transform.scale(
                                scale: value,
                                child: SizedBox(
                                  height: 48,
                                  width: 48,
                                  child: IconButton(
                                    onPressed: () {},
                                    iconSize: 20,
                                    icon: Assets.icons.layer.svg(
                                      fit: BoxFit.scaleDown,
                                      width: 20,
                                      height: 20,
                                      colorFilter: const ColorFilter.mode(
                                          AppColors.whiteF8F, BlendMode.srcIn),
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                          8.verticalSpace,
                          TweenAnimationBuilder(
                            tween: Tween<double>(begin: 0, end: 1),
                            duration: const Duration(milliseconds: 500),
                            builder: (context, value, child) {
                              return Transform.scale(
                                scale: value,
                                child: SizedBox(
                                  height: 48,
                                  width: 48,
                                  child: IconButton(
                                    onPressed: () {},
                                    iconSize: 20,
                                    icon: Transform.rotate(
                                      angle: -pi * 0.25,
                                      child: Assets.icons.mapArrow.svg(
                                        fit: BoxFit.scaleDown,
                                        width: 20,
                                        height: 20,
                                        colorFilter: const ColorFilter.mode(
                                            AppColors.whiteF8F,
                                            BlendMode.srcIn),
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                      TweenAnimationBuilder(
                          tween: Tween<double>(begin: 0, end: 1),
                          duration: const Duration(milliseconds: 500),
                          builder: (context, value, child) {
                            return Transform.scale(
                              scale: value,
                              child: TextButton.icon(
                                onPressed: () {},
                                icon: Assets.icons.justified.svg(
                                  fit: BoxFit.scaleDown,
                                  width: 20,
                                  height: 20,
                                  colorFilter: const ColorFilter.mode(
                                      AppColors.whiteF8F, BlendMode.srcIn),
                                ),
                                label: Text(
                                  'List of Variants',
                                  style: TextStyle(fontSize: 18.sp),
                                ),
                              ),
                            );
                          })
                    ],
                  ),
                ),
                100.verticalSpace,
              ],
            ),
          ),
        ],
      ),
    );
  }
}
