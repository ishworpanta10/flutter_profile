import 'package:flutter/material.dart';
import 'package:native_pdf_view/native_pdf_view.dart';

import '../../../constants/constants.dart';

class PdfViewPage extends StatefulWidget {
  const PdfViewPage({required this.headingName, required this.pdfSource});
  final String headingName;
  final String pdfSource;

  @override
  _PdfViewPageState createState() => _PdfViewPageState();
}

class _PdfViewPageState extends State<PdfViewPage> {
  late PdfController _pdfController;
  @override
  void initState() {
    _pdfController = PdfController(
      document: PdfDocument.openAsset(widget.pdfSource),
      initialPage: _initialPage,
    );
    super.initState();
  }

  @override
  void dispose() {
    _pdfController.dispose();
    super.dispose();
  }

  final int _initialPage = 0;
  int _actualPageNumber = 0, _allPagesCount = 0;

  bool _scrollHorizontal = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.headingName),
        actions: [
          Container(
            padding: const EdgeInsets.only(right: kPadding * 2),
            alignment: Alignment.center,
            child: Text(
              '$_actualPageNumber/$_allPagesCount',
              style: const TextStyle(fontSize: 18),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          SwitchListTile(
            value: _scrollHorizontal,
            onChanged: (value) {
              setState(() {
                _scrollHorizontal = value;
              });
            },
            title: const Text("Scroll Horizontal"),
          ),
          Expanded(
            child: PdfView(
              documentLoader: const Center(child: CircularProgressIndicator()),
              pageLoader: const Center(child: CircularProgressIndicator()),
              controller: _pdfController,
              scrollDirection: _scrollHorizontal ? Axis.horizontal : Axis.vertical,
              onDocumentLoaded: (document) {
                setState(() {
                  _allPagesCount = document.pagesCount;
                });
              },
              onPageChanged: (page) {
                setState(() {
                  _actualPageNumber = page;
                });
              },
              errorBuilder: (_) {
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.error_outline, size: 40),
                      SizedBox(height: kPadding),
                      Text('Error Loading Pdf'),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
