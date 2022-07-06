import 'package:uas_new/models/Artikel_Models.dart';
import 'package:uas_new/models/Detail_Artikel_Models.dart';

import 'package:uas_new/services/Artikel_Services.dart';
import 'package:flutter/cupertino.dart';

class ArtikelProvider extends ChangeNotifier {
  ArtikelProvider() {
    showListArtikel();
  }

  final ArtikelService _artikelService = ArtikelService();
  artikel Artikel = artikel();
  detail_Artikel Detail_artikel = detail_Artikel();

  showListArtikel() async {
    Artikel = await _artikelService.tampilkanartikel();
    notifyListeners();
  }

  ShowDetailArtikel({String? inputKey}) async {
    Detail_artikel =
        await _artikelService.tampilkanDetail_artikel(id: inputKey);
    notifyListeners();
  }
}
