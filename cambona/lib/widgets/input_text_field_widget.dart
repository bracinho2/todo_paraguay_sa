import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InputTextFieldWidget extends StatelessWidget {
  const InputTextFieldWidget({
    super.key,
    this.inputFormatters,
    this.validator,
    this.onChanged,
    this.autovalidateMode,
    this.initialValue,
    this.label,
    this.controller,
    this.onTap,
  });
  final Widget? label;
  final String? initialValue;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final AutovalidateMode? autovalidateMode;
  final void Function(String)? onChanged;
  final void Function()? onTap;

  final List<TextInputFormatter>? inputFormatters;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: onTap,
      initialValue: initialValue,
      controller: controller,
      onChanged: onChanged,
      autovalidateMode: autovalidateMode,
      validator: validator,
      inputFormatters: inputFormatters,
      decoration: InputDecoration(
        labelStyle: Theme.of(context).textTheme.subtitle1,
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            width: 2,
            color: Theme.of(context).colorScheme.background,
          ),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            width: 2,
            color: Theme.of(context).colorScheme.background,
          ),
        ),
        label: label,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        filled: false,
      ),
    );
  }
}
