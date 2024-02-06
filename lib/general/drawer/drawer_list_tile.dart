import 'package:flutter/material.dart';

class DrawerListTile extends StatelessWidget {
  final String title;
  final IconData icon;
  final void Function()? onTap;


  const DrawerListTile({super.key ,required this.title, required this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return  ListTile(
        title: Text(title),
        leading: Icon(
          icon,
        ),
        onTap: onTap
    );
  }
}
