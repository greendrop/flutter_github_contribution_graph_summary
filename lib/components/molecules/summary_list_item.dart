import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:github_contribution_graph_summary/entities/github_account.dart';

class SummaryListItem extends HookWidget {
  const SummaryListItem({required this.githubAccount});

  final GithubAccount githubAccount;

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Column(children: [
      Column(children: [
        Row(children: [
          Container(
              margin: const EdgeInsets.all(10),
              child: githubAccount.avatorUrl == ''
                  ? const CircleAvatar(
                      backgroundColor: Colors.grey, child: Text(''))
                  : CircleAvatar(
                      backgroundImage: NetworkImage(githubAccount.avatorUrl))),
          Expanded(
              child: Text(githubAccount.login,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 20)))
        ])
      ])
    ]));
  }
}
