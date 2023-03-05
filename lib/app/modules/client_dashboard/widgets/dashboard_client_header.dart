import 'package:cambona/paddings/cambona_spacer.dart';
import 'package:flutter/material.dart';

class DashboardClientHeader extends StatelessWidget {
  const DashboardClientHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: CambonaSpacer.horizontal.md + CambonaSpacer.top.md,
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.onBackground,
          borderRadius: BorderRadius.circular(
            10,
          ),
        ),
        height: 120,
        child: Padding(
          padding: CambonaSpacer.horizontal.lg,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CircleAvatar(
                foregroundColor: Theme.of(context).colorScheme.onBackground,
                radius: 30,
                child: const Icon(
                  Icons.person,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
