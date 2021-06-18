import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class GithubAvator extends HookWidget {
  const GithubAvator({required this.avatorUrl});

  final String avatorUrl;

  @override
  Widget build(BuildContext context) {
    if (avatorUrl == '') {
      return const CircleAvatar(backgroundColor: Colors.grey, child: Text(''));
    }

    return CircleAvatar(backgroundImage: NetworkImage(avatorUrl));
  }
}
