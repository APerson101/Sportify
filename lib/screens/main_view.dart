import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sportify/screens/dashboard_view.dart';
import 'package:sportify/screens/notifications_view.dart';
import 'package:sportify/screens/profile_view.dart';
import 'package:sportify/screens/search_view.dart';

class MainView extends ConsumerWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        bottomNavigationBar: const _BottomNavBar(),
        body: IndexedStack(
          index: MainViews.values.indexOf(ref.watch(_currentPageProvider)),
          children: const [
            DashboardView(),
            SearchView(),
            NotificationsView(),
            ProfileView()
          ],
        ));
  }
}

class _BottomNavBar extends ConsumerWidget {
  const _BottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BottomNavigationBar(
        unselectedItemColor: Colors.pink,
        selectedItemColor: Colors.amber,
        onTap: (current) {
          ref.read(_currentPageProvider.notifier).state =
              MainViews.values[current];
        },
        currentIndex: MainViews.values.indexOf(ref.watch(_currentPageProvider)),
        items: MainViews.values.map((view) {
          Widget icon;
          String label;
          switch (view) {
            case MainViews.dashboard:
              icon = const Icon(Icons.dashboard);
              label = "Dashboard";
              break;

            case MainViews.notifications:
              icon = const Icon(Icons.notifications);
              label = "Notifications";
              break;
            case MainViews.profile:
              icon = const Icon(Icons.person);
              label = "Profile";
              break;
            case MainViews.searchView:
              icon = const Icon(Icons.search);
              label = "Search";
              break;
          }
          return BottomNavigationBarItem(icon: icon, label: label);
        }).toList());
  }
}

final _currentPageProvider = StateProvider((ref) {
  return MainViews.dashboard;
});

enum MainViews { dashboard, searchView, notifications, profile }
