// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class BottomNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 58.0,
      alignment: Alignment.center,
      child: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: const Icon(Icons.home),
              onPressed: () {},
            ),
            IconButton(icon: Icon(Icons.search), onPressed: null),
            IconButton(icon: Icon(Icons.add_box), onPressed: null),
            IconButton(icon: Icon(Icons.favorite), onPressed: null),
            IconButton(icon: Icon(Icons.person), onPressed: null),
          ],
        ),
      ),
    );
  }
}
