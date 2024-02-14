import 'package:flutter/material.dart';

/// FavoriteIcons
final class FavoriteIcons extends StatelessWidget {
  /// FavoriteIcons constructor
  const FavoriteIcons({
    super.key,
    this.color = Colors.red,
  });

  /// The color of the icon
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.favorite,
      color: color,
    );
  }
}
