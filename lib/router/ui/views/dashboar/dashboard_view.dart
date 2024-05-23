import 'package:flutter/material.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.blue,
        child: Column(
          children: [
            const Text('Dashboard View'),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/institucional');
                },
                child: const Text('Institucional')),
          ],
        ));
  }
}
