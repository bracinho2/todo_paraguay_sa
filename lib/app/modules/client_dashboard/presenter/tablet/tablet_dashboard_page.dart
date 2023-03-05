import 'package:flutter/material.dart';

class TabletDashBoardPage extends StatelessWidget {
  const TabletDashBoardPage({
    super.key,
    required this.constraints,
  });

  final BoxConstraints constraints;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.green,
        child: const Center(
          child: Text(
            'Tablet',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
