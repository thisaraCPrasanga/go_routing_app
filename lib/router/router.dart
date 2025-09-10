import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_routing_app/pages/child_page.dart';
import 'package:go_routing_app/pages/home_page.dart';
import 'package:go_routing_app/pages/profile_page.dart';
import 'package:go_routing_app/pages/user.dart';
import 'package:go_routing_app/router/route_names.dart';

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
        name: "home",
        path: "/home",
        builder: (context, state) {
          return HomePage();
        },
      ),
      GoRoute(
        name: RouteNamesClass.profile,
        path: "/profile",
        builder: (context, state) {
          return ProfilePage();
        },
        routes: [
          GoRoute(
            name: "child",
            path: "child",
            builder: (context, state) {
              return ChildPage();
            },
          ),
        ],
      ),

      //Extra parameter
      //       GoRoute(
      //         path: "/user",
      //         builder: (context, state) {
      //           final String name =
      //               (state.extra as Map<String, dynamic>)["name"] as String;
      //           final age = (state.extra as Map<String, dynamic>)["age"] as int;

      //           return UserPage(userName: name, age: age);
      //         },
      //       ),
      GoRoute(
        path: "/user/:name/:age",
        builder: (context, state) {
          return UserPage(
            userName: state.pathParameters["name"]!,
            age: int.parse(state.pathParameters["age"]!),
          );
        },
      ),
    ],
  );
}
