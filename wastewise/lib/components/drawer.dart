import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:wastewise/components/drawer_tile.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: Column(
        children: [
          //Lock icon
          Padding(
            padding: const EdgeInsets.all(90.0),
            child: Icon(
              Icons.lock,
              color: Theme.of(context).primaryColor,
              size: 90,
            ),
          ),

//Home tile
          DrawerTile(
              name: 'H O M E',
              icon: Icons.home,
              onTap: () => Navigator.pop(context)),
//Settings tile
          DrawerTile(
              name: 'S E T T I N G S', icon: Icons.settings, onTap: () {}),
//Logout Tile
          DrawerTile(name: "L O G O U T", icon: Icons.logout, onTap: () {}),
          //
        ],
      ),
    );
  }
}
