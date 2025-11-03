import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iv_project_core/iv_project_core.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Validations {
  Validations._();

  static bool validateTextEditingControllers(List<TextEditingController> textEditingControllers) {
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

  static Future<void> checkRateLimitState(
    String key,
    Future<void> Function() execute,
    void Function(int remainingSeconds) onLimited,
  ) async {
    final prefs = await SharedPreferences.getInstance();
    final expireMillis = prefs.getInt(key);
    final now = DateTime.now();

    final parts = key.split('_');
    final seconds = int.tryParse(parts.last) ?? 0;
    final limitDuration = Duration(seconds: seconds);

    if (expireMillis == null) {
      await execute();
      final expireTime = now.add(limitDuration);
      await prefs.setInt(key, expireTime.millisecondsSinceEpoch);
      return;
    }

    final expireTime = DateTime.fromMillisecondsSinceEpoch(expireMillis);
    if (now.isAfter(expireTime)) {
      await execute();
      final newExpireTime = now.add(limitDuration);
      await prefs.setInt(key, newExpireTime.millisecondsSinceEpoch);
    } else {
      final remaining = expireTime.difference(now).inSeconds;
      onLimited(remaining);
    }
  }
}
