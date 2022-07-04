import 'package:flutter/material.dart';

class detailArtikelScreen extends StatefulWidget {
  final String? title;
  const detailArtikelScreen({this.title, Key? key}) : super(key: key);

  @override
  State<detailArtikelScreen> createState() => _detailArtikelScreen();
}

class _detailArtikelScreen extends State<detailArtikelScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.title}"),
      ),
    );
  }
}
