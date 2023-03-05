import 'package:cambona/widgets/input_text_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:todo_paraguay_sa/app/modules/auth_client/presenter/sign_up_page/sign_up_controller.dart';
import '../../../home/presenter/web/main_page/desktop_page/banner_logo_widget.dart';

class SignUpClientPage extends StatelessWidget {
  const SignUpClientPage({
    Key? key,
    required this.constraints,
    required this.controller,
  }) : super(key: key);

  final BoxConstraints constraints;
  final SignUpPageController controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black26,
      body: Center(
          child: ConstrainedBox(
        constraints: const BoxConstraints(
          maxWidth: 900,
          maxHeight: 600,
        ),
        child: Row(
          children: [
            Container(
              width: 450,
              color: Colors.amber,
            ),
            Container(
              width: 450,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(40),
                child: Form(
                  key: controller.formKey,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const BannerLogo(
                        bannerSize: 100,
                      ),
                      InputTextFieldWidget(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        initialValue: controller.client.name.value,
                        validator: (_) => controller.client.name.message,
                        onChanged: (v) {
                          controller.client.setName(v);
                        },
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      InputTextFieldWidget(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        initialValue: controller.client.name.value,
                        validator: (_) => controller.client.name.message,
                        onChanged: (v) {
                          controller.client.setName(v);
                        },
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      InputTextFieldWidget(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        initialValue: controller.client.name.value,
                        validator: (_) => controller.client.name.message,
                        onChanged: (v) {
                          controller.client.setName(v);
                        },
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      InputTextFieldWidget(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        initialValue: controller.client.name.value,
                        validator: (_) => controller.client.name.message,
                        onChanged: (v) {
                          controller.client.setName(v);
                        },
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          controller.validateForm();
                        },
                        child: const Text('Cadastrar'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
