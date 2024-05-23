import 'package:flutter/material.dart';

class DashboardLayout extends StatelessWidget {
  Widget? child;
  DashboardLayout({super.key, this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        const Text('Dashboard Layout'),
        // Add your widgets here
        Expanded(child: child!),
        const Text('Footer'),
      ],
    ));
  }
}
