import 'package:itacov/view/main_page.dart';
import 'package:itacov/view/splash.dart';
import 'package:sailor/sailor.dart';

class RouteConfig {
  static const String SPLASH = '/';
  static const String MAIN = '/main';

  static void configureMainRoutes(Sailor router) {
    router.addRoutes([
      SailorRoute(
        name: RouteConfig.SPLASH,
        builder: (context, args, params) {
          return Splash();
        },
      ),
      SailorRoute(
        name: RouteConfig.MAIN,
        builder: (context, args, params) {
          return MainPage();
        },
      ),
    ]);
  }
}