import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          Text("Home page"),
          ElevatedButton(
            onPressed: () {
              GoRouter.of(context).go("/profile");
            },
            child: Text("Go to Profile Page"),
          ),

          //Go to user page
          ElevatedButton(
            onPressed: () {
              GoRouter.of(context).push("/user", extra: "Thisara C Prasanga");
            },
            child: Text("Go to User Page"),
          ),
        ],
      ),
    );
  }
}
