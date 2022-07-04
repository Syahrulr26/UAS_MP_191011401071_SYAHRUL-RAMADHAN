import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uas_artikel/providers/artikelProvider.dart';
import 'package:uas_artikel/screens/artikelScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => artikelProvider(),
        ),
      ],
      child: const MaterialApp(
        home: artikelScreen(),
      ),
    );
  }
}
