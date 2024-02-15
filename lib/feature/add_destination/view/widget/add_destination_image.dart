part of '../add_destination_view.dart';

final class _AddDestinationImage extends StatelessWidget {
  const _AddDestinationImage();

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.asset(
        StringConstants.imgTrip,
      ),
    );
  }
}
