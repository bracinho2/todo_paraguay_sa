import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ShowSearchWidget extends StatefulWidget {
  const ShowSearchWidget({
    Key? key,
    required this.submit,
    required this.controller,
    this.validator,
    this.prefixIcon,
    required this.obscure,
    required this.actionIcon,
    this.inputFormatters,
  }) : super(key: key);

  final void Function() submit;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final IconData? prefixIcon;
  final bool obscure;
  final bool actionIcon;
  final List<TextInputFormatter>? inputFormatters;

  @override
  State<ShowSearchWidget> createState() => _ShowSearchWidgetState();
}

class _ShowSearchWidgetState extends State<ShowSearchWidget> {
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
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 15,
          horizontal: 15,
        ),
        child: TextFormField(
          textInputAction: TextInputAction.go,
          onFieldSubmitted: (value) {
            searchQuery = '';
            widget.controller.clear();
          },
          onChanged: (value) {
            searchQuery = value;
          },
          controller: widget.controller,
          validator: widget.validator,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            hintText: 'Buscar alguna cosa',
            hintStyle: const TextStyle(
              color: Colors.grey,
            ),
            fillColor: Colors.black12,
            filled: true,
            suffixIcon: searchQuery != null && searchQuery!.isNotEmpty
                ? IconButton(
                    onPressed: () {
                      setState(() {
                        searchQuery = '';
                        widget.controller.clear();
                      });
                    },
                    icon: const Icon(Icons.search),
                  )
                : null,
            prefixIcon: widget.prefixIcon != null
                ? SizedBox(
                    height: 50,
                    width: 50,
                    child: Icon(
                      widget.prefixIcon,
                    ),
                  )
                : null,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
              borderSide: const BorderSide(
                width: 0,
                style: BorderStyle.none,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
