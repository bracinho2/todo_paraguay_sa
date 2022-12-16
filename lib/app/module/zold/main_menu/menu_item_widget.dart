import 'package:flutter/material.dart';

class MenuItemWidget extends StatelessWidget {
  const MenuItemWidget({
    Key? key,
    required this.label,
    required this.icon,
    required this.selected,
    this.notifications,
    required this.onPressed,
  }) : super(key: key);
  final String label;
  final IconData icon;
  final bool selected;
  final int? notifications;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(10),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Row(
          children: [
            _buildIcon(),
            const SizedBox(width: 20),
            Expanded(
              child: _buildLabel(),
            ),
            if (notifications != null)
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: _buildNotif(),
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildIcon() {
    return Icon(
      icon,
      size: 20,
      color: (!selected) ? Colors.red : Colors.blue,
    );
  }

  Widget _buildLabel() {
    return Text(
      label,
      style: TextStyle(
        color: (!selected) ? Colors.blue : Colors.red,
        fontWeight: FontWeight.bold,
        letterSpacing: .8,
        fontSize: 14,
      ),
    );
  }

  Widget _buildNotif() {
    return (notifications == null || notifications! <= 0)
        ? Container()
        : Container(
            width: 30,
            padding: const EdgeInsets.all(5),
            decoration: const BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
            ),
            alignment: Alignment.center,
            child: Text(
              (notifications! >= 100) ? "99+" : "$notifications",
              style: const TextStyle(
                color: Colors.white,
                fontSize: 10,
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            ),
          );
  }
}
