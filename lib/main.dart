import 'package:flutter/material.dart';
import 'package:flutter_fluro_demo/router/router.dart';
import 'package:flutter_fluro_demo/router/ui/layouts/dashboard_layout.dart';
import 'package:flutter_fluro_demo/services/navigator_service.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    AppRouter.configureRoutes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fluro Demo',
      initialRoute: '/',
      onGenerateRoute: AppRouter.router.generator,
      navigatorKey: NavigationService.navigatorKey,
      builder: (context, child) {
        return DashboardLayout(child: child!);
      },
    );
  }
}
