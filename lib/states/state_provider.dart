import 'package:github_contribution_graph_summary/states/summary_list_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final summaryListStateProvider =
    StateNotifierProvider<SummaryListStateNotifier, SummaryListState>(
        (_) => SummaryListStateNotifier());
