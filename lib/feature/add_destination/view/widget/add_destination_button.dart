part of '../add_destination_view.dart';

final class _AddDestinationButton extends StatelessWidget {
  const _AddDestinationButton({
    required this.globalKey,
    required this.nameController,
    required this.visitCountController,
  });

  final GlobalKey<FormState> globalKey;
  final TextEditingController nameController;
  final TextEditingController visitCountController;

  @override
  Widget build(BuildContext context) {
    return Consumer<VisitedViewModel>(
      builder: (context, value, child) => SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () {
            _addDestinationAndNavigate(value, context);
          },
          child: const Text('Add'),
        ),
      ),
    );
  }

  void _addDestinationAndNavigate(
    VisitedViewModel value,
    BuildContext context,
  ) {
    if (globalKey.currentState?.validate() ?? false) {
      value.addVisitedDestination(
        Destination(
          name: nameController.text,
          isVisited: true,
          visitCount: int.parse(visitCountController.text),
        ),
      );
      context.router.pop();
    }
  }
}
