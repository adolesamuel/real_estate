import 'package:flutter/material.dart';
import 'package:moniepoint_real_estate/home_page.dart';
import 'package:moniepoint_real_estate/maps_page.dart';

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IndexedStack(
          index: currentPage,
          children: const [
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
