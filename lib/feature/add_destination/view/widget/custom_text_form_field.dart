part of '../add_destination_view.dart';

/// CustomTextFormField
final class CustomTextFormField extends StatefulWidget {
  /// CustomTextFormField Constructor
  const CustomTextFormField({
    required this.controller,
    super.key,
    this.keyboardType = TextInputType.text,
    this.textInputAction = TextInputAction.next,
    this.labelText = 'Destination',
    this.validatorText = 'Please enter a destination',
  });

  /// TextEditingController
  final TextEditingController controller;

  /// TextInputType
  final TextInputAction textInputAction;

  /// LabelText
  final String labelText;

  /// ValidatorText
  final String validatorText;

  /// TextInputType
  final TextInputType keyboardType;

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

final class _CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      key: widget.key,
      controller: widget.controller,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        labelText: widget.labelText,
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return widget.validatorText;
        }
        return null;
      },
      textInputAction: widget.textInputAction,
      keyboardType: widget.keyboardType,
    );
  }
}
