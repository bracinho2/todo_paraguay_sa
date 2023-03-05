import 'package:cambona/paddings/cambona_spacer.dart';
import 'package:cambona/widgets/elevated_button_widget.dart';
import 'package:cambona/widgets/input_text_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:todo_paraguay_sa/app/core/extensions/datetime_extensions.dart';

import '../presenter/controller/client_dashboard_controller.dart';

class BannerFormWidget extends StatefulWidget {
  const BannerFormWidget({super.key});

  @override
  State<BannerFormWidget> createState() => _NewBannerFormWidgetState();
}

final dashboardController = Modular.get<ClientDashBoardController>();

class _NewBannerFormWidgetState extends State<BannerFormWidget> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: EdgeInsets.zero,
      backgroundColor: Theme.of(context).colorScheme.onBackground,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(10.0),
        ),
      ),
      content: Builder(
        builder: (context) {
          var height = MediaQuery.of(context).size.height;
          var width = MediaQuery.of(context).size.width;

          return SizedBox(
            height: height - 400,
            width: width - 400,
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: CambonaSpacer.all.lg,
                    child: Form(
                      key: dashboardController.sendBannerFormKey,
                      autovalidateMode: AutovalidateMode.always,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InputTextFieldWidget(
                            label: const Text('Name'),
                            //autovalidateMode: AutovalidateMode.always,
                            validator: (_) =>
                                dashboardController.banner.bannerName.message,
                            initialValue:
                                dashboardController.banner.bannerName.value,
                            onChanged: (value) =>
                                dashboardController.banner.setBannerName(value),
                          ),
                          InputTextFieldWidget(
                              label: const Text('URL'),
                              //autovalidateMode: AutovalidateMode.always,
                              validator: (_) =>
                                  dashboardController.banner.bannerUrl.message,
                              initialValue:
                                  dashboardController.banner.bannerUrl.value,
                              onChanged: (value) {
                                dashboardController.banner.setBannerUrl(value);
                              }),
                          if (dashboardController.banner.id == null)
                            InputTextFieldWidget(
                              initialValue: dashboardController
                                  .banner.bannerPublishedDate.value
                                  .showDateWithTime(),
                              //autovalidateMode: AutovalidateMode.always,
                              validator: (_) => dashboardController
                                  .banner.bannerPublishedDate.message,
                              label: const Text('Published'),
                              onTap: () async {
                                final pickedDate = await showDatePicker(
                                  context: context,
                                  initialDate: DateTime.now(),
                                  firstDate: DateTime(2000),
                                  lastDate: DateTime(2101),
                                );
                                setState(() {
                                  dashboardController.banner
                                      .setBannerPublishedDate(pickedDate);
                                });
                              },
                            ),
                          InputTextFieldWidget(
                            label: const Text('Exhibition Days'),
                            //autovalidateMode: AutovalidateMode.always,
                            validator: (_) => dashboardController
                                .banner.exhibitionDays.message,
                            onChanged: (value) => dashboardController.banner
                                .setExhibitionDays(int.tryParse(value)),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          ElevatedButtonWidget(
                            label: 'Send Banner',
                            icon: Icons.send_and_archive,
                            onPressed: () {
                              final result = dashboardController.validateForm();
                              //if (result) Navigator.pop(context);
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Container(
                        decoration: dashboardController
                                .banner.bannerUrl.value.isEmpty
                            ? BoxDecoration(
                                color: Theme.of(context).colorScheme.background,
                              )
                            : BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                    dashboardController.banner.bannerUrl.value,
                                  ),
                                ),
                              ),
                      ),
                      Padding(
                        padding: CambonaSpacer.bottom.lg,
                        child: ElevatedButtonWidget(
                          label: 'Preview Banner',
                          icon: Icons.image,
                          onPressed: () => setState(() {}),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
