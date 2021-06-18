import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:routemaster/routemaster.dart';

class RootBody extends HookWidget {
  @override
  Widget build(BuildContext context) {
    void replaceRouteSummary() {
      Routemaster.of(context).replace('/summary');
    }

    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        ElevatedButton(
            onPressed: () => replaceRouteSummary,
            child: const Text('Create Summary'))
      ])
    ]);
  }
}
