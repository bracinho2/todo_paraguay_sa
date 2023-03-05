import 'package:cambona/paddings/cambona_spacer.dart';
import 'package:cambona/widgets/elevated_button_widget.dart';

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:todo_paraguay_sa/app/modules/client_dashboard/domain/entities/dashboard_banner_entity.dart';
import 'package:todo_paraguay_sa/app/modules/client_dashboard/presenter/controller/client_dashboard_controller.dart';

import 'banner_form_widget.dart';

class BannerAnnouncementsListWidget extends StatefulWidget {
  const BannerAnnouncementsListWidget({
    super.key,
    required this.banners,
  });

  final List<DashBoardBannerEntity> banners;

  @override
  State<BannerAnnouncementsListWidget> createState() =>
      _BannerAnnouncementsListWidgetState();
}

final dashBoardController = Modular.get<ClientDashBoardController>();

class _BannerAnnouncementsListWidgetState
    extends State<BannerAnnouncementsListWidget> {
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
                'My Banners',
                style: Theme.of(context).textTheme.subtitle1,
              ),
              ElevatedButtonWidget(
                label: 'New Banner',
                icon: Icons.new_label,
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (_) => const BannerFormWidget());
                },
              ),
            ],
          ),
        ),
        Padding(
          padding: CambonaSpacer.horizontal.md,
          child: SizedBox(
            width: double.infinity,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  10,
                ),
                color: Theme.of(context).colorScheme.onBackground,
              ),
              child: DataTable(
                columns: const [
                  DataColumn(label: Text('ID')),
                  DataColumn(label: Text('Name')),
                  DataColumn(label: Text('Published')),
                  DataColumn(label: Text('Expires')),
                  DataColumn(label: Text('Actions')),
                ],
                rows: widget.banners
                    .map(
                      (banner) => DataRow(
                        cells: [
                          DataCell(Text(banner.id.toString())),
                          DataCell(Text(banner.bannerName.value)),
                          DataCell(Text(
                              banner.bannerPublishedDate.value.toString())),
                          DataCell(Text(banner.exhibitionDays.toString())),
                          DataCell(
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.more_vert,
                                color:
                                    Theme.of(context).colorScheme.onSecondary,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                    .toList(),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
