import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iv_project_core/iv_project_core.dart';

class LocaleCubit() extends Cubit<Locale> {
  this : super(const Locale('id', 'ID'));

  Future<void> set(Locale value, {bool reloadLangAssets = true}) async {
    if (reloadLangAssets) await AppLocalization.reload(value);
    emit(value);
  }
}

class BusyCubit() extends Cubit<bool> {
  this : super(false);

  void set(bool value) => emit(value);
}

class DebugCubit() extends Cubit<DebugState> {
  this : super(const DebugState());

  void set(DebugState value) => emit(value);
}

class const DebugState({final int marker = 0, final String printValue = ''}) extends Equatable {
  DebugState copyWith({int? marker, String? printValue}) {
    return DebugState(marker: marker ?? this.marker, printValue: printValue ?? this.printValue);
  }

  void emitState() => GlobalContextService.value.read<DebugCubit>().set(this);

  @override
  List<Object?> get props => [marker, printValue];
}
