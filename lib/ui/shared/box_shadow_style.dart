import 'package:flutter/material.dart';

class BoxShadowStyle {
  static BoxDecoration boxDecorationCard =
  BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10), boxShadow: [
    BoxShadow(
        color: Colors.grey.withOpacity(0.5), spreadRadius: 1, blurRadius: 3, offset: Offset(1, 2)),
  ]);
}