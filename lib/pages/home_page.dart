import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_routing_app/router/route_names.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          Text("Home page"),

          //navigate using named route
          ElevatedButton(
            onPressed: () {
              GoRouter.of(context).goNamed(RouteNamesClass.profile);
            },
            child: Text("Go to Profile Page"),
          ),

          //Go to user page
          //should give data in right order when u create router class GoRoute
          ElevatedButton(
            onPressed: () {
              String name = "Thisara C Prasanga";
              int age = 22;
              GoRouter.of(context).go("/user/$name / $age");
            },
            child: Text("Go to User Page"),
          ),

          ElevatedButton(
            onPressed: () {
              String name = "Thisara C Prasanga";
              int age = 22;
              GoRouter.of(
                context,
              ).goNamed(RouteNamesClass.age, queryParameters: {"age": "24"});
            },
            child: Text("Go to Age Page"),
          ),
        ],
      ),
    );
  }
}
