import 'package:go_router/go_router.dart';
import 'package:iv_project_core/iv_project_core.dart';

class NavigationService {
  NavigationService._();

  static late GoRouter _router;
  static GoRouter get router => _router;

  static void init(GoRouter goRouter) {
    _router = goRouter;
  }

  static void go(String route, {Extra? extra}) {
    _router.go(route, extra: extra);
  }

  static void push(String route, {Extra? extra}) {
    _router.push(route, extra: extra);
  }

  static void pop<T extends Object?>([T? result]) {
    if (_router.canPop()) _router.pop(result);
  }
}
