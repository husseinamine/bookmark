import 'package:bookmark/styles.dart';
import 'package:flutter/material.dart';

class UploadBarcode extends StatefulWidget {
  const UploadBarcode({Key? key}) : super(key: key);

  @override
  State<UploadBarcode> createState() => _UploadBarcodeState();
}

class _UploadBarcodeState extends State<UploadBarcode> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerRight,
      child: GestureDetector(
        onTap: () {},
        child: Text(
          "Upload ISBN Barcode",
          style: TextStyle(color: Styles.subjectColor),
        ),
      ),
    );
  }
}
