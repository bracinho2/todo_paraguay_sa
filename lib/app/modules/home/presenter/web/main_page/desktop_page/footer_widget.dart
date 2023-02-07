import 'package:flutter/material.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: SizedBox(
        height: 75,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              child: Row(children: [
                Row(
                  children: const [
                    Icon(Icons.storefront),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Anuncie',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 20,
                ),
                Row(
                  children: const [
                    Icon(Icons.crisis_alert),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Report Error',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 20,
                ),
                Row(
                  children: const [
                    Icon(Icons.help_center),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Help Center',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ]),
            ),
            const Text(
              'All Right Reserved by Todo Paraguay | 2022',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
