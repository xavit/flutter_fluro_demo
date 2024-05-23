import 'package:flutter/material.dart';
import 'package:flutter_fluro_demo/services/navigator_service.dart';

class InstitucionalView extends StatelessWidget {
  const InstitucionalView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.green,
        child: Column(
          children: [
            const Text('Institucional View'),
            ElevatedButton(
                onPressed: () {
                  // Navigator.pushNamed(context, '/');
                  NavigationService.navigateTo('/');
                },
                child: const Text('Dashboard')),
          ],
        ));
  }
}
