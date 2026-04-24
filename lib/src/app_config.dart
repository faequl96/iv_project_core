import 'package:iv_project_core/src/enums/enums.dart';

class AppConfig {
  AppConfig._();

  static AppUserViewType _appUserViewType = AppUserViewType.general;
  static AppUserViewType get appUserViewType => _appUserViewType;

  static void set({required AppUserViewType appUserViewType}) {
    _appUserViewType = appUserViewType;
  }
}
