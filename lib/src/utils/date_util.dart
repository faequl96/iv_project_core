// ignore_for_file: constant_identifier_names

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:iv_project_core/iv_project_core.dart';

enum DateFormatPattern {
  EEEEddMMMMyyyyHHmm('EEEE, dd MMMM yyyy | HH.mm'),
  EEEEddMMMMyyyy('EEEE, dd MMMM yyyy'),
  HHmm('HH.mm');

  const DateFormatPattern(this.data);

  final String data;
}

class DateUtil {
  const DateUtil._();

  static String format(DateTime dateTime, DateFormatPattern pattern) {
    final localeCubit = GlobalContextService.value.read<LocaleCubit>();
    return DateFormat(pattern.data, localeCubit.state.languageCode == 'id' ? 'id_ID' : 'en_US').format(dateTime);
  }
}
