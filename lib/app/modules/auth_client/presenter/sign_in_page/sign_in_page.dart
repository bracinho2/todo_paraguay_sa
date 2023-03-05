import 'package:cambona/cambona.dart';
import 'package:flutter/material.dart';
import 'package:todo_paraguay_sa/app/core/functions.dart';
import 'package:todo_paraguay_sa/app/modules/auth_client/presenter/sign_in_page/sign_in_controller.dart';
import '../../../../core/dummy.dart';
import '../../../home/presenter/web/main_page/desktop_page/banner_logo_widget.dart';

class SignInClientPage extends StatelessWidget {
  SignInClientPage({
    Key? key,
    required this.constraints,
    required this.controller,
  }) : super(key: key);

  final BoxConstraints constraints;
  final SignInPageController controller;

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

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
              decoration: BoxDecoration(
                  image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  images[generateInt(images)],
                ),
              )),
            ),
            Container(
              width: 450,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(50),
                child: Form(
                  key: controller.formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const BannerLogo(
                        bannerSize: 100,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          InputTextFieldWidget(
                            label: const Text('email'),
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            onChanged: (value) =>
                                controller.credencials.setEmail(value),
                            validator: (_) =>
                                controller.credencials.email.message,
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          InputTextFieldPasswordWidget(
                            label: const Text('password'),
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            onChanged: (value) =>
                                controller.credencials.setPassword(value),
                            validator: (_) =>
                                controller.credencials.password.message,
                            controller: passwordController,
                            suffixIcon: true,
                            obscure: true,
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          TextButtonWidget(
                            label: 'Esqueceu sua senha?',
                            onTap: () {
                              print('Clicou!');
                            },
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        onPressed: () => controller.validateForm(),
                        child: const Text('Sign In'),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const RichTextButton(
                        label: 'Nao tem conta?',
                        labelLink: ' Cadastre-se!',
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
