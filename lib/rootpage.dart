import 'package:flutter/material.dart';
import 'package:moniepoint_real_estate/home_page.dart';
import 'package:moniepoint_real_estate/maps_page.dart';

class RootPage extends StatelessWidget {
  const RootPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IndexedStack(
          index: 1,
          children: [
            HomePage(),
            MapsPage(),
          ],
        ),
        // NavigationBar(
        //   destinations: [
        //     HomePage(),
        //     Container(),
        //   ],
        // ),
      ],
    );
  }
}
