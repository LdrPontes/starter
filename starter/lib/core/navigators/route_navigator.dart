import 'package:flutter/widgets.dart';

class RouteNavigator {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  Future<dynamic>? pushNamed<Arguments>({required String routeName, Arguments? arguments}) {
    return navigatorKey.currentState?.pushNamed(routeName, arguments: arguments);
  }

  void pop() {
    navigatorKey.currentState?.pop();
  }
}
