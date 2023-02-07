import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InputTextFieldWidget extends StatefulWidget {
  final void Function() submit;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final IconData? prefixIcon;
  final bool obscure;
  final bool actionIcon;
  final List<TextInputFormatter>? inputFormatters;

  const InputTextFieldWidget({
    Key? key,
    required this.submit,
    required this.controller,
    this.validator,
    this.prefixIcon,
    this.obscure = false,
    this.actionIcon = false,
    this.inputFormatters,
  }) : super(key: key);

  @override
  State<InputTextFieldWidget> createState() => _InputTextFieldWidgetState();
}

class _InputTextFieldWidgetState extends State<InputTextFieldWidget> {
  String? _searchQuery;
  String? get searchQuery => _searchQuery;

  set searchQuery(String? value) {
    if (value != _searchQuery) {
      setState(() {
        _searchQuery = value;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          onChanged: (String? value) {
            searchQuery = value;
          },
          decoration: InputDecoration(
            fillColor: Colors.white,
            isDense: true,
            filled: true,
            suffixIcon: searchQuery != null && searchQuery!.isNotEmpty
                ? IconButton(
                    onPressed: () {
                      setState(() {
                        searchQuery = '';
                        widget.controller.clear();
                      });
                    },
                    icon: const Icon(Icons.clear),
                  )
                : null,
            prefixIcon: widget.prefixIcon != null
                ? SizedBox(
                    height: 64,
                    width: 64,
                    child: Icon(
                      widget.prefixIcon,
                    ),
                  )
                : const SizedBox(
                    height: 64,
                    width: 64,
                    child: Icon(
                      Icons.search,
                    ),
                  ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
              borderSide: const BorderSide(
                width: 0,
                style: BorderStyle.none,
              ),
            ),
          ),
          controller: widget.controller,
          validator: widget.validator,
          //inputFormatters: inputFormatters,
        ),
        const SizedBox(
          height: 20,
        ),
        // ElevatedButton(
        //   onPressed: searchQuery != null && searchQuery!.isNotEmpty
        //       ? widget.submit
        //       : null,
        //   child: const Text(
        //     'Buscar',
        //   ),
        // ),
      ],
    );
  }
}
