import 'package:go_router/go_router.dart';
import 'package:go_routing_app/pages/home_page.dart';
import 'package:go_routing_app/pages/profile_page.dart';

class RouterClass {
  final router = GoRouter(
    initialLocation: "/home",
    routes: [
      GoRoute(path: "/home", builder: (context, state) => HomePage()),
      GoRoute(path: "/profile", builder: (context, state) => ProfilePage()),
    ],
  );
}
