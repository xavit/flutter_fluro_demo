import 'package:flutter/material.dart';

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
                  Navigator.pushNamed(context, '/');
                },
                child: const Text('Dashboard')),
          ],
        ));
  }
}
