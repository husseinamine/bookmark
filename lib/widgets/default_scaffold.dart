import 'package:bookmark/styles.dart';
import 'package:flutter/material.dart';

class DefaultScaffold extends Scaffold {
  final String appBarTitle;
  final Widget? content;
  final Widget? floatingAction;
  final Widget? bottomNavBar;

  const DefaultScaffold({
    Key? key,
    required this.appBarTitle,
    this.content,
    this.floatingAction,
    this.bottomNavBar,
  }) : super(key: key);

  @override
  bool? get resizeToAvoidBottomInset => false;

  @override
  Color? get backgroundColor => Styles.backgroundColor;

  @override
  AppBar? get appBar => AppBar(
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          appBarTitle,
          style: Styles.appBarTextStyle,
        ),
      );

  @override
  Widget? get body => content;

  @override
  Widget? get floatingActionButton => floatingAction;

  @override
  Widget? get bottomNavigationBar => bottomNavBar;
}
