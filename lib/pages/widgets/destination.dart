import 'package:flutter/material.dart';

class Destination {
  final String label;
  final IconData icon;
  const Destination({
    required this.label,
    required this.icon,
  });
}

const destinations = [
  Destination(label: 'Home', icon: Icons.home),
  Destination(label: 'Search', icon: Icons.search),
  Destination(label: 'Profile', icon: Icons.person),
];
