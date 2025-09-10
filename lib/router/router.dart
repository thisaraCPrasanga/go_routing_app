import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_routing_app/pages/child_page.dart';
import 'package:go_routing_app/pages/home_page.dart';
import 'package:go_routing_app/pages/profile_page.dart';

class RouterClass {
  final router = GoRouter(
    errorPageBuilder: (context, state) {
      return MaterialPage<dynamic>(
        child: Scaffold(
          body: Center(child: Text("Error page.this page is not found")),
        ),
      );
    },
    initialLocation: "/home",
    routes: [
      GoRoute(
        path: "/home",
        builder: (context, state) {
          return HomePage();
        },
      ),
      GoRoute(
        path: "/profile",
        builder: (context, state) {
          return ProfilePage();
        },
        routes: [
          GoRoute(
            path: "child",
            builder: (context, state) {
              return ChildPage();
            },
          ),
        ],
      ),
    ],
  );
}
