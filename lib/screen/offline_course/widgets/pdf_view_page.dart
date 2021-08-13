import 'package:flutter/material.dart';
import 'package:native_pdf_view/native_pdf_view.dart';

class PdfViewPage extends StatefulWidget {
  const PdfViewPage({required this.pdfSource, required this.courseName});
  final String pdfSource;
  final String courseName;

  @override
  _PdfViewPageState createState() => _PdfViewPageState();
}

class _PdfViewPageState extends State<PdfViewPage> {
  late PdfController _pdfController;
  @override
  void initState() {
    _pdfController = PdfController(
      document: PdfDocument.openAsset(widget.pdfSource),
    );
    super.initState();
  }

  @override
  void dispose() {
    _pdfController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.courseName),
      ),
      body: PdfView(controller: _pdfController),
    );
  }
}