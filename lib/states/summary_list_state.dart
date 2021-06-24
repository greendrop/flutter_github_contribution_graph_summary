import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:github_contribution_graph_summary/graphql/github/api.dart';
import 'package:github_contribution_graph_summary/repositories/user_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'summary_list_state.freezed.dart';

@freezed
class SummaryListState with _$SummaryListState {
  factory SummaryListState(
          {@Default(<User$Query$User>[]) List<User$Query$User> githubUsers}) =
      _SummaryListState;
  const SummaryListState._();
}

class SummaryListStateNotifier extends StateNotifier<SummaryListState> {
  SummaryListStateNotifier() : super(SummaryListState());

  Future<void> addGithubUser(String login) async {
    final repository = UserRepository();

    final user = await repository.fetchUser(login);
    state = state.copyWith(githubUsers: [...state.githubUsers, user]);
  }
}
