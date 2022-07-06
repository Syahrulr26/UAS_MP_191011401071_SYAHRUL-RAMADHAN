import 'package:uas_new/providers/Artikel_Providers.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DetailArtikelScreen extends StatefulWidget {
  final String? title;
  const DetailArtikelScreen({this.title, Key? key});

  @override
  State<DetailArtikelScreen> createState() => _DetailArtikelScreenState();
}

class _DetailArtikelScreenState extends State<DetailArtikelScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.title}"),
        backgroundColor: Colors.cyan,
        centerTitle: true,
      ),
      body: Consumer<ArtikelProvider>(
        // ignore: non_constant_identifier_names
        builder: (context, provider, _) {
          return ListView.builder(
              itemCount: provider.Detail_artikel.data?.length ?? 0,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Column(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.height,
                        child: Image.network(
                          provider.Detail_artikel.data![index].image!,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Text(
                        provider.Detail_artikel.data![index].title!,
                        style: const TextStyle(
                          fontSize: 24,
                        ),
                      ),
                      Text(provider.Detail_artikel.data![index].createdAt!),
                      Text(provider.Detail_artikel.data![index].description!),
                    ],
                  ),
                );
              });
        },
      ),
    );
  }
}
