import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences_case/feature/add_destination/mixin/add_destination_view_mixin.dart';
import 'package:shared_preferences_case/feature/visited/view_model/visited_view_model.dart';
import 'package:shared_preferences_case/product/core/constants/string_constants.dart';
import 'package:shared_preferences_case/product/model/destination.dart';
import 'package:shared_preferences_case/product/widget/custom_sized_box.dart';

part 'widget/add_destination_app_bar.dart';
part 'widget/add_destination_button.dart';
part 'widget/add_destination_image.dart';
part 'widget/custom_text_form_field.dart';

@RoutePage()

/// AddDestination
final class AddDestinationView extends StatelessWidget
    with AddDestinationViewMixin<AddDestinationView> {
  /// AddDestination constructor
  AddDestinationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const _AddDestinationAppBar(),
      body: Form(
        key: globalKey,
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: ListView(
            children: [
              const CustomSizedBox(),
              const _AddDestinationImage(),
              const CustomSizedBox(),
              CustomTextFormField(
                controller: nameController,
              ),
              const CustomSizedBox(),
              CustomTextFormField(
                controller: visitCountController,
                textInputAction: TextInputAction.done,
                labelText: 'Visit Count',
                validatorText: 'Please enter a visit count',
                keyboardType: TextInputType.number,
              ),
              const CustomSizedBox(),
              _AddDestinationButton(
                globalKey: globalKey,
                nameController: nameController,
                visitCountController: visitCountController,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
