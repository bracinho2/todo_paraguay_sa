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
          horizontal: 150,
        ),
        child: TextFormField(
          textInputAction: TextInputAction.go,
          onFieldSubmitted: (value) {
            print(searchQuery);
            searchQuery = '';
            widget.controller.clear();
          },
          onChanged: (value) {
            searchQuery = value;
          },
          controller: widget.controller,
          validator: widget.validator,
          decoration: InputDecoration(
            hintText: 'Buscar alguna cosa',
            fillColor: Colors.white,
            isDense: true,
            filled: true,
            suffixIcon: searchQuery != null && searchQuery!.isNotEmpty
                ? IconButton(
                    onPressed: () {
                      setState(() {
                        print(searchQuery);
                        searchQuery = '';
                        widget.controller.clear();
                      });
                    },
                    icon: const Icon(Icons.search),
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
                : null,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
              borderSide: const BorderSide(
                width: 2,
                style: BorderStyle.solid,
                color: Colors.blue,
              ),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
              borderSide: const BorderSide(
                width: 2,
                style: BorderStyle.solid,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
