import 'package:uas_new/providers/Artikel_Providers.dart';
import 'package:uas_new/screens/Artikel_Screens.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
          create: (context) => ArtikelProvider(),
        ),
      ],
      child: const MaterialApp(
        home: ArtikelScreen(),
      ),
    );
  }
}
