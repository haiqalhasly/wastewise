import 'package:flutter/material.dart';

class DrawerTile extends StatelessWidget {
  final String name;
  final IconData? icon;
  final void Function()? onTap;

  const DrawerTile({
    super.key,
    required this.name,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        color: Theme.of(context).primaryColor,
      ),
      title: Text(
        name,
        style: TextStyle(
          color: Theme.of(context).primaryColor,
        ),
      ),
      onTap: onTap,
    );
  }
}
