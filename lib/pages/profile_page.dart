import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nav_router/router/routes_name.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: Center(
        child: TextButton(
          child: const Text('Configurations'),
          onPressed: () {
            context.push(RoutesName.profileConfig);
          },
        ),
      ),
    );
  }
}
