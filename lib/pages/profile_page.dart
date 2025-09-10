import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Profile Page"),

          ElevatedButton(
            onPressed: () {
              GoRouter.of(context).go("/home");
            },
            child: Text("Go to Home Page"),
          ),

          ElevatedButton(
            onPressed: () {
              GoRouter.of(context).go("/profile/child");
            },
            child: Text("Go to child Page"),
          ),
        ],
      ),
    );
  }
}
