import 'package:flutter/material.dart';
import 'package:moniepoint_real_estate/configs/assets.gen.dart';
import 'package:photo_view/photo_view.dart';

class MapsPage extends StatelessWidget {
  const MapsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        ],
      ),
    );
  }
}
