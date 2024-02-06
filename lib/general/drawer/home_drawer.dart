import 'package:flutter/material.dart';

import 'drawer_list_tile.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: Theme.of(context).colorScheme.background,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  const DrawerHeader(
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.chair,color: Colors.blueAccent,size: 40,),
                          Text('Deepcode Furniture')
                        ],
                      )
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),

                  DrawerListTile(
                      title: "Home",
                      icon: Icons.home,
                      onTap: () {
                        Navigator.pop(context);
                      }),
                  DrawerListTile(
                      title: "Cart",
                      icon: Icons.calendar_month,
                      onTap: () {
                        Navigator.pushNamed(context, '/appointment_list_screen');
                      }),
                  DrawerListTile(
                      title: "Settings",
                      icon: Icons.settings,
                      onTap: () {
                        Navigator.pushNamed(context, '/settings_screen');
                      }),
                ],

              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 25),
                child: DrawerListTile(
                    title: "Log Out",
                    icon: Icons.logout,
                    onTap: () {
                      Navigator.pushNamed(context, '/settings_screen');
                    }),
              ),
            ],
          ),
        ));
  }
}