import 'package:flutter/material.dart';

class ExchangeWidget extends StatelessWidget {
  const ExchangeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: SizedBox(
        width: 180,
        child: Row(
          children: [
            _buildMoney(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              child: _buildDivider(),
            ),
            _buildREalExchange(),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 5.0,
              ),
              child: _buildDivider(),
            ),
            _buildGuaraniExchange(),
          ],
        ),
      ),
    );
  }
}

Widget _buildMoney() {
  return const Text(
    'USD 1',
    style: TextStyle(
      fontWeight: FontWeight.bold,
      color: Colors.blue,
      fontSize: 16,
    ),
  );
}

Widget _buildDivider() {
  return Container(
    width: 3,
    height: 40,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(3),
      color: Colors.red,
    ),
  );
}

Widget _buildREalExchange() {
  return const Text(
    'R\$ 5,37',
    style: TextStyle(
      fontWeight: FontWeight.w600,
      color: Colors.blue,
    ),
  );
}

Widget _buildGuaraniExchange() {
  return const Text(
    'G\$ 6,981',
    style: TextStyle(
      fontWeight: FontWeight.w600,
      color: Colors.blue,
      overflow: TextOverflow.ellipsis,
    ),
    maxLines: 1,
  );
}
