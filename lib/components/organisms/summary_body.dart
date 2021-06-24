import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:github_contribution_graph_summary/components/molecules/summary_add_form.dart';
import 'package:github_contribution_graph_summary/components/molecules/summary_list_item.dart';
import 'package:github_contribution_graph_summary/states/state_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SummaryBody extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final summaryListStateNotifier =
        useProvider(summaryListStateProvider.notifier);
    final summaryListState = useProvider(summaryListStateProvider);

    final name = useState('');

    void onChangedName(String value) {
      name.value = value;
    }

    void onPressedAdd() {
      summaryListStateNotifier.addGithubUser(name.value);
      name.value = '';
    }

    return Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
      Expanded(
          child: ListView(children: [
        ...summaryListState.githubUsers
            .map((item) => SummaryListItem(githubUser: item))
      ])),
      Container(
          margin: const EdgeInsets.all(20),
          child: SummaryAddForm(
              onChangedName: onChangedName, onPressedAdd: onPressedAdd))
    ]);
  }
}
