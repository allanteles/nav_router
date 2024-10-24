import 'package:flutter/material.dart';

class ProfileConfigPage extends StatelessWidget {
  const ProfileConfigPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile Config'),
      ),
      body: const Center(
        child: Text('Profile Config Page'),
      ),
    );
  }
}
