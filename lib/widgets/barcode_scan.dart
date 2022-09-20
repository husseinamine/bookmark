import 'package:bookmark/styles.dart';
import 'package:flutter/material.dart';
import 'package:scan/scan.dart';

class BarcodeScan extends StatefulWidget {
  final ScanController scanController;

  const BarcodeScan({Key? key, required this.scanController}) : super(key: key);

  @override
  State<BarcodeScan> createState() => _BarcodeScanState();
}

class _BarcodeScanState extends State<BarcodeScan> {
  late String barcode;
  late ScanController controller;

  @override
  void initState() {
    super.initState();
    controller = widget.scanController;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.width,
        child: ScanView(
          controller: controller,
          scanAreaScale: .7,
          scanLineColor: Styles.subjectColor,
          onCapture: (data) {
            setState(() {
              barcode = data;
              controller.resume();
            });
          },
        ),
      ),
    );
  }
}
