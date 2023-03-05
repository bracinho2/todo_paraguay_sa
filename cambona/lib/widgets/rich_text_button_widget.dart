import 'package:cambona/cambona.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class RichTextButton extends StatelessWidget {
  const RichTextButton({
    super.key,
    required this.label,
    required this.labelLink,
  });

  final String label;
  final String labelLink;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Center(
        child: RichText(
          text: TextSpan(
              text: label,
              style: TextStyle(color: lightColorScheme.tertiary),
              children: <TextSpan>[
                TextSpan(
                    text: labelLink,
                    style: TextStyle(color: lightColorScheme.primary),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        print('clicou');
                      })
              ]),
        ),
      ),
    );
  }
}
