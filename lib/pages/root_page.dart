import 'package:breakpoint/breakpoint.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:github_contribution_graph_summary/components/organisms/drawer_content.dart';

class RootPage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (_, constraints) {
      final breakpoint = Breakpoint.fromConstraints(constraints);
      if (breakpoint.window >= WindowSize.medium) {
        return Scaffold(
            appBar:
                AppBar(title: const Text('GitHub Contribution Graph Summay')),
            body: Row(children: [DrawerContent(), Container()]));
      } else {
        return Scaffold(
            appBar:
                AppBar(title: const Text('GitHub Contribution Graph Summay')),
            drawer: DrawerContent(),
            body: Container());
      }
    });
  }
}
