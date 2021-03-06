import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:routemaster/routemaster.dart';

class DrawerBody extends HookWidget {
  @override
  Widget build(BuildContext context) {
    void replaceRouteSummary() {
      Routemaster.of(context).replace('/summary');
    }

    return Drawer(
        child: ListView(padding: EdgeInsets.zero, children: <Widget>[
      const DrawerHeader(
        decoration: BoxDecoration(
          color: Colors.blue,
        ),
        child: Text(
          'GitHub Contribution Graph Summay',
          style: TextStyle(
            fontSize: 24,
            color: Colors.white,
          ),
        ),
      ),
      ListTile(
        title: const Text('Summary'),
        onTap: replaceRouteSummary,
      ),
    ]));
  }
}
