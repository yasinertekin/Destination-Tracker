import 'package:flutter/material.dart';
import 'package:shared_preferences_case/feature/add_destination/view/add_destination_view.dart';

/// CustomTextFormFieldMixin
mixin CustomTextFormFieldMixin on State<CustomTextFormField> {
  /// TextEditingController
  late final TextEditingController _controller;

  /// TextEditingController getter
  TextEditingController get controller => _controller;

  @override
  void initState() {
    _controller = widget.controller;
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
