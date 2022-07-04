import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uas_artikel/providers/Artikel_Providers.dart';
import 'package:uas_artikel/screens/Detail_Artikel.dart';

class artikelScreen extends StatefulWidget {
  const artikelScreen({Key? key}) : super(key: key);

  @override
  State<artikelScreen> createState() => _artikelScreenState();
}

class _artikelScreenState extends State<artikelScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '191011401071_SYAHRUL RAMADHAN',
          style: TextStyle(
              color: Color.fromARGB(255, 0, 0, 0), fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Consumer<artikelProvider>(
        builder: (context, provider, child) {
          return ListView.builder(
            itemCount: provider.artikelmodel.data?.length ?? 0,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => detailArtikelScreen(
                        title: provider.artikelmodel.data![index].title,
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
                            "${provider.artikelmodel.data![index].image}"),
                        Text(
                          "${provider.artikelmodel.data![index].title}",
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(" ${provider.artikelmodel.data![index].title}"),
                        Text("${provider.artikelmodel.data![index].createdAt}"),
                      ],
                    ),
                  ),
                ),
              );
            },
            padding: const EdgeInsets.all(18),
          );
        },
      ),
    );
  }
}
