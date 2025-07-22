import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:iv_project_core/src/localization/app_localization.dart';

class LocaleCubit extends Cubit<Locale> {
  LocaleCubit() : super(const Locale('id', 'ID'));

  Future<void> set(Locale value) async {
    await AppLocalization.reload(value);
    emit(value);
  }
}

class BusyCubit extends Cubit<bool> {
  BusyCubit() : super(false);

  void set(bool value) => emit(value);
}
