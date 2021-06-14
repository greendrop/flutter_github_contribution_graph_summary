import 'package:breakpoint/breakpoint.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:github_contribution_graph_summary/components/organisms/drawer_body.dart';
import 'package:github_contribution_graph_summary/components/organisms/not_found_body.dart';

class NotFoundPage extends HookWidget {
  final _title = 'GitHub Contribution Graph Summay';

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (_, constraints) {
      final breakpoint = Breakpoint.fromConstraints(constraints);
      if (breakpoint.window >= WindowSize.medium) {
        return Scaffold(
            appBar: AppBar(title: Text(_title)),
            body:
                Row(children: [DrawerBody(), Expanded(child: NotFoundBody())]));
      } else {
        return Scaffold(
            appBar: AppBar(title: Text(_title)),
            drawer: DrawerBody(),
            body: NotFoundBody());
      }
    });
  }
}
