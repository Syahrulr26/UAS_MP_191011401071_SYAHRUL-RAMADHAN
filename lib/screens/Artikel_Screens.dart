import 'package:provider/provider.dart';
import 'package:uas_new/providers/Artikel_Providers.dart';
import 'package:uas_new/screens/Detail_Screens.dart';

import 'package:flutter/material.dart';
import 'package:uas_new/providers/Artikel_Providers.dart';

class ArtikelScreen extends StatefulWidget {
  const ArtikelScreen({Key? key}) : super(key: key);
  @override
  _ArtikelScreenState createState() => _ArtikelScreenState();
}

class _ArtikelScreenState extends State<ArtikelScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('191011401071_SYAHRUL RAMADHAN',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
          backgroundColor: Colors.cyan,
          centerTitle: true,
        ),
        body: Consumer<ArtikelProvider>(
            builder: (context, ArtikelProvider, child) {
          return ListView.builder(
            itemCount: ArtikelProvider.Artikel.data?.length ?? 0,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailArtikelScreen(
                        title: ArtikelProvider.Artikel.data![index].title!,
                      ),
                    ),
                  );
                },
                child: Card(
                    elevation: 20,
                    child: Padding(
                        padding: const EdgeInsets.all(18),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.network(
                                "${ArtikelProvider.Artikel.data![index].image}"),
                            Text(
                              "${ArtikelProvider.Artikel.data![index].title}",
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                                "${ArtikelProvider.Artikel.data![index].createdAt}"),
                          ],
                        ))),
              );
            },
            padding: const EdgeInsets.all(18),
          );
        }));
  }
}
