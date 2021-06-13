import 'package:flutter/material.dart';
import 'package:github_contribution_graph_summary/app_root.dart';
import 'package:github_contribution_graph_summary/config/app_config.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  final _ = AppConfig().load();

  WidgetsFlutterBinding.ensureInitialized();
  runApp(ProviderScope(child: AppRoot()));
}
