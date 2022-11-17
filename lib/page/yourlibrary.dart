import 'dart:ui';

import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';
class YourLibrary extends StatelessWidget {
  const YourLibrary({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Text('YourLibrary', style: TextStyle(fontSize: 40, color: Colors.yellow),
      ),
    );
  }
}