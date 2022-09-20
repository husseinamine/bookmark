import 'package:bookmark/styles.dart';
import 'package:bookmark/widgets/bottom_navbar.dart';
import 'package:bookmark/widgets/default_scaffold.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const DefaultScaffold(
      appBarTitle: "BOOKMARK",
      bottomNavBar: BottomNavBar(),
    );
  }
}
