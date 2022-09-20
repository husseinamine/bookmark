import 'package:bookmark/screens/addbook_screen.dart';
import 'package:bookmark/screens/home_screen.dart';
import 'package:bookmark/styles.dart';
import 'package:flutter/material.dart';
import 'package:scan/scan.dart';

late ScanController _scanController;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  _scanController = ScanController();
  runApp(const BookmarkApp());
}

class BookmarkApp extends StatelessWidget {
  const BookmarkApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bookmark',
      initialRoute: '/',
      onGenerateRoute: _buildRoutes,
      theme: ThemeData(
        primarySwatch: Styles.themeColor,
        fontFamily: Styles.defaultFont,
      ),
      home: const Home(),
    );
  }

  Route _buildRoutes(RouteSettings settings) {
    final Route screen;

    var defaultScreen = MaterialPageRoute(
      builder: (context) => const Home(),
    );

    switch (settings.name) {
      case '/':
        screen = defaultScreen;
        break;

      case '/addBook':
        screen = MaterialPageRoute(
          builder: (context) => AddBook(scanController: _scanController),
        );
        break;

      default:
        screen = defaultScreen;
    }

    return screen;
  }
}
