import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:github_contribution_graph_summary/components/atoms/github_circle_avator.dart';
import 'package:github_contribution_graph_summary/graphql/github/api.dart';
import 'package:url_launcher/url_launcher.dart';

class SummaryListItem extends HookWidget {
  const SummaryListItem({required this.githubUser});

  final User$Query$User githubUser;

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Column(children: [
      Column(children: [
        InkWell(
          onTap: () {
            _launchURL('https://github.com/${githubUser.login}');
          },
          child: Row(children: [
            Container(
                margin: const EdgeInsets.all(10),
                child: GithubCircleAvator(avatorUrl: githubUser.avatarUrl)),
            Expanded(
              child: Text(githubUser.login,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 20)),
            ),
          ]),
        )
      ])
    ]));
  }

  Future<void> _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    }
  }
}
