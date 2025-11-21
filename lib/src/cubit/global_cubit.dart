import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iv_project_core/src/app_localization.dart';

class LocaleCubit extends Cubit<Locale> {
  LocaleCubit() : super(const Locale('id', 'ID'));

  Future<void> set(Locale value, {bool reloadLangAssets = true}) async {
    if (reloadLangAssets) await AppLocalization.reload(value);
    emit(value);
  }
}

class BusyCubit extends Cubit<bool> {
  BusyCubit() : super(false);

  void set(bool value) => emit(value);
}
