import 'package:itacov/view/main_page.dart';
import 'package:itacov/view/profile.dart';
import 'package:itacov/view/splash.dart';
import 'package:sailor/sailor.dart';

class RouteConfig {
  static const String SPLASH = '/';
  static const String MAIN = '/main';
  static const String PROFILE = "/profile";
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
      SailorRoute(
        name: RouteConfig.PROFILE,
        builder: (context, args, params) {
          return ProfilePage();
        },
      ),
    ]);
  }
}
