import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:github_contribution_graph_summary/graphql/github/api.dart';

class SummaryListItemChart extends HookWidget {
  const SummaryListItemChart({required this.githubUser});

  final User$Query$User githubUser;

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 240, child: LineChart(_createLineChartData()));
  }

  LineChartData _createLineChartData() {
    return LineChartData(
        lineBarsData: _createLineChartBarData(),
        titlesData: FlTitlesData(
          bottomTitles: SideTitles(
              showTitles: true,
              getTitles: (value) {
                final date = DateTime.fromMillisecondsSinceEpoch(value.toInt());
                if (date.day == 1 || date.day == 15) {
                  return '${date.month}/${date.day}';
                }

                return '';
              }),
        ));
  }

  List<LineChartBarData> _createLineChartBarData() {
    final spots = <FlSpot>[];
    for (final week
        in githubUser.contributionsCollection.contributionCalendar.weeks) {
      for (final day in week.contributionDays) {
        spots.add(FlSpot(day.date.millisecondsSinceEpoch.toDouble(),
            day.contributionCount.toDouble()));
      }
    }

    return [LineChartBarData(spots: spots)];
  }
}
