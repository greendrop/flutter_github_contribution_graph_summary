import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class DrawerBody extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(padding: EdgeInsets.zero, children: const <Widget>[
      DrawerHeader(
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
    ]));
  }
}
