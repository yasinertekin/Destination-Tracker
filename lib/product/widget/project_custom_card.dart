import 'package:flutter/material.dart';
import 'package:shared_preferences_case/product/model/destination.dart';
import 'package:shared_preferences_case/product/widget/favorite_icon.dart';

/// ProjectCustomCard
final class ProjectCustomCard extends StatelessWidget {
  /// ProjectCustomCard constructor
  const ProjectCustomCard({
    required this.destination,
    required this.trailingOnPressed,
    this.cardOnTap,
    this.trailingIcon,
    this.visitCount,
    super.key,
    this.padding = const EdgeInsets.all(8),
  });

  /// The padding of the card
  final EdgeInsetsGeometry padding;

  /// The destination
  final Destination destination;

  /// The trailing icon
  final Widget? trailingIcon;

  /// The onPressed function
  final void Function() trailingOnPressed;

  /// The visit count
  final String? visitCount;

  /// The card onPressed function
  final void Function()? cardOnTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Card(
        child: ListTile(
          onTap: cardOnTap,
          title: Text(destination.name ?? ''),
          subtitle:
              visitCount != null ? Text('Visited: $visitCount times') : null,
          trailing: IconButton(
            icon: trailingIcon ?? const FavoriteIcons(),
            onPressed: trailingOnPressed,
          ),
        ),
      ),
    );
  }
}
