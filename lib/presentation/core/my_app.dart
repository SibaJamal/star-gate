import 'package:flutter/material.dart';

import '../routs/app_router.dart';
import '../theme/app_theme.dart';

class MyApp extends StatefulWidget {
  final _appRouter = AppRouter();
   MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: widget._appRouter.defaultRouteParser(),
      debugShowCheckedModeBanner: false,
      routerDelegate: widget._appRouter.delegate(),
      theme: MyAppTheme.lightTheme,
    );
  }
}
