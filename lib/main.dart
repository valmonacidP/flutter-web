import 'package:bases_web/locator.dart';
import 'package:bases_web/router/route_generator.dart';
import 'package:bases_web/services/navigator_service.dart';
import 'package:bases_web/ui/layout/main_layout_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
  setupLocator();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'RutasApp',
      initialRoute: '/stateful',
      onGenerateRoute: RouteGenerator.generateRoute,
      navigatorKey: locator<NavigationService>().navigatorKey,
      builder: (_, child) {
        return MainLayoutPage(
          child: child ?? Container(),
        );
      },
    );
  }
}
