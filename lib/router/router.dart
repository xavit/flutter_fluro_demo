import 'package:fluro/fluro.dart';
import 'package:flutter_fluro_demo/router/ui/views/dashboar/dashboard_view.dart';
import 'package:flutter_fluro_demo/router/ui/views/institucional/institucional_view.dart';

class AppRouter {
  static final FluroRouter router = FluroRouter();

  // Handlers
  static Handler mainDashboard = Handler(
    handlerFunc: (context, params) {
      return const DashboardView();
    },
  );

  static Handler mainInstitucional = Handler(
    handlerFunc: (context, params) {
      return const InstitucionalView();
    },
  );

  static dynamic configureRoutes() {
    router.define(
      '/',
      handler: mainDashboard,
      transitionType: TransitionType.inFromRight,
    );

    router.define(
      '/institucional',
      handler: mainInstitucional,
      transitionType: TransitionType.fadeIn,
    );
  }
}
