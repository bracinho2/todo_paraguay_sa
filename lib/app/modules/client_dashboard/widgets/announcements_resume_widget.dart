// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cambona/cambona.dart';
import 'package:cambona/paddings/cambona_spacer.dart';
import 'package:cambona/themes/theme_extensions.dart';

import 'package:flutter/material.dart';

class AnnouncementsResumeWidget extends StatelessWidget {
  const AnnouncementsResumeWidget({
    Key? key,
    required this.bannerCount,
    required this.bestPriceCount,
    required this.offersCount,
  }) : super(key: key);

  final int bannerCount;
  final int bestPriceCount;
  final int offersCount;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: CambonaSpacer.all.md,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Resume",
                style: Theme.of(context).textTheme.subtitle1,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 120,
          width: double.infinity,
          child: Row(
            children: [
              AnnoucementCardWidget(
                description: 'Banners',
                count: bannerCount,
                icon: Icons.analytics_sharp,
              ),
              AnnoucementCardWidget(
                description: 'Best Price',
                count: bannerCount,
                icon: Icons.analytics_sharp,
              ),
              AnnoucementCardWidget(
                description: 'Offers',
                count: bannerCount,
                icon: Icons.analytics_sharp,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class AnnoucementCardWidget extends StatelessWidget {
  const AnnoucementCardWidget(
      {super.key,
      required this.count,
      required this.icon,
      required this.description});

  final String description;
  final int count;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: CambonaSpacer.horizontal.md,
        child: Container(
          height: 120,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.onBackground,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: CambonaSpacer.horizontal.lg,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  child: Icon(
                    icon,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      description,
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    Text(
                      '$count',
                      style: Theme.of(context).textTheme.headline3,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
