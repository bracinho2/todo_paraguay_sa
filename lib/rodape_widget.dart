import 'package:flutter/material.dart';

class RodapeWidget extends StatelessWidget {
  const RodapeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text(
            'Todo Paraguay | Salto del Guaira - Canindeyú - Paraguay',
          ),
        ],
      ),
    );
  }
}
