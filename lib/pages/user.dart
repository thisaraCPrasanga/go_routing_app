import 'package:flutter/material.dart';

class UserPage extends StatelessWidget {
  final String userName;
  final int age;
  const UserPage({super.key, required this.userName, required this.age});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text("User Name $userName $age")));
  }
}
