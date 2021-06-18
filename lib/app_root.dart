import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:github_contribution_graph_summary/pages/not_found_page.dart';
import 'package:github_contribution_graph_summary/pages/root_page.dart';
import 'package:github_contribution_graph_summary/config/app_config.dart';
import 'package:github_contribution_graph_summary/pages/summary_page.dart';
import 'package:routemaster/routemaster.dart';

class AppRoot extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final appConfig = AppConfig();
    if (!appConfig.displayEnv) {
      return AppRootMain();
    }

    return Directionality(
      textDirection: TextDirection.ltr,
      child: Banner(
          color: Colors.red,
          message: appConfig.env.toUpperCase(),
          location: BannerLocation.bottomStart,
          child: AppRootMain()),
    );
  }
}

class AppRootMain extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
        title: 'GitHub Contribution Graph Summay',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        routeInformationParser: const RoutemasterParser(),
        routerDelegate: RoutemasterDelegate(
            routesBuilder: (context) => RouteMap(
                    onUnknownRoute: (_) {
                      return MaterialPage<Widget>(child: NotFoundPage());
                    },
                    routes: {
                      '/': (_) => MaterialPage<Widget>(child: RootPage()),
                      '/summary': (_) =>
                          MaterialPage<Widget>(child: SummaryPage())
                    })));
  }
}
