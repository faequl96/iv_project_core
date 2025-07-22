import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:iv_project_core/src/models/copy_with_value.dart';

extension ToCopyWithValue<T> on T {
  CopyWithValue<T> toCopyWithValue() => CopyWithValue<T>(this);
}

extension IVDebug on Object {
  void printValue({String? prefix}) => debugPrint('IV App : ${prefix != null ? '($prefix) - ' : ''}${toString()}');
  void inspectValue() => inspect(this);
}

extension TriggerListenerTextEditingController on TextEditingController {
  void validateEmptyText() {
    text = '0';
    clear();
  }

  void reset() {
    text = '0';
    clear();
  }
}
