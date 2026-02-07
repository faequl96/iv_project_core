import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iv_project_core/iv_project_core.dart';

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

class DebugCubit extends Cubit<DebugState> {
  DebugCubit() : super(const DebugState());

  void set(DebugState value) => emit(value);
}

class DebugState extends Equatable {
  const DebugState({this.marker = 0, this.printValue = ''});

  final int marker;
  final String printValue;

  DebugState copyWith({int? marker, String? printValue}) {
    return DebugState(marker: marker ?? this.marker, printValue: printValue ?? this.printValue);
  }

  void emitState() => GlobalContextService.value.read<DebugCubit>().set(this);

  @override
  List<Object?> get props => [marker, printValue];
}
