import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:github_contribution_graph_summary/entities/github_account.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'summary_list_state.freezed.dart';

@freezed
class SummaryListState with _$SummaryListState {
  factory SummaryListState(
          {@Default(<GithubAccount>[]) List<GithubAccount> githubAccounts}) =
      _SummaryListState;
  const SummaryListState._();
}

class SummaryListStateNotifier extends StateNotifier<SummaryListState> {
  SummaryListStateNotifier() : super(SummaryListState());

  void setGithubAccounts(List<GithubAccount> githubAccounts) {
    state = state.copyWith(githubAccounts: githubAccounts);
  }

  void addGithubAccount(GithubAccount githubAccount) {
    state = state
        .copyWith(githubAccounts: [...state.githubAccounts, githubAccount]);
  }
}
