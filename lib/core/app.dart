import 'package:get_it/get_it.dart';
import 'package:itacov/config/route.dart';
import 'package:sailor/sailor.dart';
import 'package:meta/meta.dart';

class App {
  /// Getter helper for App instance
  static App get main => GetIt.instance.get<App>();

  /// Application title to be provided globally in the app
  final String title;

  /// Router using sailor
  final Sailor router;

  App({
    @required this.title,
    @required this.router,
  });

  Future<void> init() async {
    // configure routes
    RouteConfig.configureMainRoutes(router);
  }
}
