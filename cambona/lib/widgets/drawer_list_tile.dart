import 'package:flutter/material.dart';

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key? key,
    required this.title,
    required this.onPress,
    this.leading,
  }) : super(key: key);

  final String title;
  final IconData? leading;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onPress,
      horizontalTitleGap: 0.0,
      leading: Icon(
        leading,
      ),
      title: Text(
        title,
      ),
    );
  }
}
