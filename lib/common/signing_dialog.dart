import 'package:flutter/material.dart';

AlertDialog signatureAlert = const AlertDialog(
  clipBehavior: Clip.antiAlias,
  title: Text("Moniepoint Real Estate Test"),
  content: SizedBox(
    height: 120,
    width: 150,
    child: Column(
      children: [
        CircleAvatar(
          radius: 40,
          backgroundImage: AssetImage('assets/sam.jpg'),
        ),
        SizedBox(
          height: 4.0,
        ),
        Text(
          'Built by Adole Samuel',
        ),
      ],
    ),
  ),
);
