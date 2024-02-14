import 'package:flutter/material.dart';
import 'package:shared_preferences_case/feature/add_destination/view/add_destination_view.dart';

/// AddDestinationViewMixin
mixin AddDestinationViewMixin<StatelessWidget extends AddDestinationView> {
  /// GlobalKey
  final _globalKey = GlobalKey<FormState>();

  /// GlobalKey getter
  GlobalKey<FormState> get globalKey => _globalKey;

  /// NameController
  final _nameController = TextEditingController();

  /// NameController getter
  TextEditingController get nameController => _nameController;

  /// VisitCountController
  final _visitCountController = TextEditingController();

  /// VisitCountController getter
  TextEditingController get visitCountController => _visitCountController;
}
