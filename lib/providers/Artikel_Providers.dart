import 'package:flutter/cupertino.dart';
import 'package:uas_artikel/models/artikelModel.dart';
import 'package:uas_artikel/services/artikelService.dart';

class artikelProvider extends ChangeNotifier {
  final artikelService _artikelService = artikelService();
  late artikelModel artikelmodel = artikelModel();

  getArtikel() async {
    artikelmodel = await _artikelService.getArtikel();
    print(artikelmodel.data!.length);
    notifyListeners();
  }

  artikelProvider() {
    getArtikel();
  }
}
