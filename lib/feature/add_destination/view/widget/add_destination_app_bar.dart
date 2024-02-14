part of '../add_destination_view.dart';

final class _AddDestinationAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const _AddDestinationAppBar();

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('Add Destination'),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
