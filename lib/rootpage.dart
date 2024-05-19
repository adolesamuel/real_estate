import 'package:flutter/material.dart';
import 'package:moniepoint_real_estate/home_page.dart';

class RootPage extends StatelessWidget {
  const RootPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IndexedStack(
          children: [
            HomePage(),
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
