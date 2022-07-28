import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Center(child: Text("Dashboard View"));
  }
}

final _loadNewVenues = FutureProvider((ref) async {
  return;
});

final _loadEvents = FutureProvider((ref) async {
  return;
});

final _loadLiveScores = FutureProvider((ref) async {
  return;
});

final _loadAllEvents = FutureProvider((ref) async {
  return;
});
