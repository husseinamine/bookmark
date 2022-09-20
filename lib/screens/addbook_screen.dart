import 'package:bookmark/styles.dart';
import 'package:bookmark/widgets/barcode_scan.dart';
import 'package:bookmark/widgets/default_scaffold.dart';
import 'package:bookmark/widgets/upload_barcode.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:scan/scan.dart';

class AddBook extends StatefulWidget {
  final ScanController scanController;

  const AddBook({Key? key, required this.scanController}) : super(key: key);

  @override
  State<AddBook> createState() => _AddBookState();
}

//TODO:clean up!!!!
class _AddBookState extends State<AddBook> {
  @override
  Widget build(BuildContext context) {
    return DefaultScaffold(
      appBarTitle: "ADD BOOK",
      content: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              "Scan ISBN Barcode",
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            BarcodeScan(scanController: widget.scanController),
            UploadBarcode(),
          ],
        ),
      ),
      floatingAction: SpeedDial(
        animatedIcon: AnimatedIcons.menu_close,
        overlayColor: Styles.themeColor,
        overlayOpacity: 0.8,
        children: [
          SpeedDialChild(
            labelShadow: [BoxShadow(color: Styles.backgroundColor)],
            labelBackgroundColor: Styles.themeColor,
            labelStyle: TextStyle(color: Colors.white),
            foregroundColor: Colors.white,
            backgroundColor: Styles.subjectColor,
            child: Icon(Icons.edit),
            label: "Enter ISBN",
            onTap: () {
              showDialog(
                context: context,
                builder: _buildPopupDialog,
              );
            },
          ),
          SpeedDialChild(
            labelShadow: [BoxShadow(color: Styles.backgroundColor)],
            labelBackgroundColor: Styles.themeColor,
            labelStyle: TextStyle(color: Colors.white),
            foregroundColor: Colors.white,
            backgroundColor: Styles.subjectColor,
            child: Icon(Icons.library_add),
            label: "Add Manually",
          )
        ],
      ),
    );
  }

  Widget _buildPopupDialog(BuildContext context) {
    print("test0");
    return AlertDialog(
      title: const Text('Enter ISBN Code'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const <Widget>[
          TextField(),
        ],
      ),
      actions: <Widget>[
        FlatButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          textColor: Theme.of(context).primaryColor,
          child: const Text('Close'),
        ),
      ],
    );
  }
}
