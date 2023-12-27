import 'package:flutter/material.dart';

class sizeh extends StatelessWidget {
  sizeh({super.key, required this.h});
  final double h;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: h,
    );
  }
}
