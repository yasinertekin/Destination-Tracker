import 'package:flutter/material.dart';

/// CustomSizedBox
final class CustomSizedBox extends StatelessWidget {
  /// CustomSizedBox constructor
  const CustomSizedBox({
    super.key,
    this.height = 0.05,
  });

  /// Height
  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * height,
    );
  }
}
