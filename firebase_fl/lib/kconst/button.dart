import 'package:flutter/material.dart';

class kButton extends StatelessWidget {
  kButton({super.key, this.onpress, this.text});
  final onpress;
  final text;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: onpress, child: Text(text));
  }
}
