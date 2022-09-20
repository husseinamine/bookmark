import 'package:bookmark/styles.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.mail_outline),
          label: 'Export',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.bookmark),
          label: 'Bookmark',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.delete_outline),
          label: 'Clear',
        ),
      ],
      selectedItemColor: Styles.subjectColor,
      unselectedItemColor: Colors.white30,
      currentIndex: 1,
      backgroundColor: Styles.themeColor,
      onTap: (int tabIndex) async {
        switch (tabIndex) {
          case 0:
            break;

          case 1:
            Navigator.of(context).pushNamed('/addBook');
            break;

          case 2:
            break;
        }
      },
    );
  }
}
