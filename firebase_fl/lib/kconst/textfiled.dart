import 'package:flutter/material.dart';

class kTextFiled extends StatelessWidget {
  kTextFiled({this.controller, this.text});
  final controller;
  final text;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: kTextFieldDecoration.copyWith(hintText: text),
    );
  }
}

const kTextFieldDecoration = InputDecoration(
  hintText: 'hintText',
  contentPadding: EdgeInsets.symmetric(
    vertical: 10.0,
    horizontal: 20.0,
  ),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(30.0),
    ),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.blueAccent, width: 2.0),
    borderRadius: BorderRadius.all(
      Radius.circular(30.0),
    ),
  ),
);
