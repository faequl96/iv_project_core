import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iv_project_core/iv_project_core.dart';

class Validations {
  Validations._();

  static bool validateEmptyTextEditingControllers(List<TextEditingController> textEditingControllers) {
    for (final controller in textEditingControllers) {
      if (controller.text.trim().isEmpty) controller.validateEmptyText();
    }
    if (textEditingControllers.any((controller) => controller.text.trim().isEmpty)) return false;
    return true;
  }

  static Future<void> checkBusyState(Future<void> Function() execute) async {
    final busyCubit = GlobalContextService.value.read<BusyCubit>();
    if (busyCubit.state) return;
    busyCubit.set(true);
    await execute();
    busyCubit.set(false);
  }
}
