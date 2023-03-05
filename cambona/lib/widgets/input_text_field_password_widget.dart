import 'package:cambona/cambona.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InputTextFieldPasswordWidget extends StatefulWidget {
  const InputTextFieldPasswordWidget({
    Key? key,
    this.validator,
    this.obscure = false,
    this.suffixIcon = false,
    this.inputFormatters,
    this.label,
    this.controller,
    required this.autovalidateMode,
    this.onChanged,
  }) : super(key: key);

  final Widget? label;
  final void Function(String)? onChanged;
  final AutovalidateMode autovalidateMode;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final bool obscure;
  final bool suffixIcon;
  final List<TextInputFormatter>? inputFormatters;

  @override
  State<InputTextFieldPasswordWidget> createState() =>
      _InputTextFieldWidgetState();
}

class _InputTextFieldWidgetState extends State<InputTextFieldPasswordWidget> {
  bool showPassword = false;
  @override
  void initState() {
    super.initState();
    showPassword = widget.obscure;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: widget.onChanged,
      autovalidateMode: widget.autovalidateMode,
      decoration: InputDecoration(
        label: widget.label,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        filled: false,
        suffixIcon: widget.suffixIcon
            ? GestureDetector(
                onTap: () {
                  setState(() {
                    showPassword = !showPassword;
                  });
                },
                child: Icon(
                  showPassword ? Icons.visibility : Icons.visibility_off,
                  size: 20,
                  color: showPassword
                      ? lightColorScheme.tertiary
                      : lightColorScheme.primary,
                ),
              )
            : null,
      ),
      controller: widget.controller,
      validator: widget.validator,
      obscureText: showPassword,
      inputFormatters: widget.inputFormatters,
    );
  }
}
