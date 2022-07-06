import 'package:uas_new/models/Artikel_Models.dart';
import 'package:uas_new/models/Detail_Artikel_Models.dart';
import 'package:dio/dio.dart';

class ArtikelService {
  Future<artikel> tampilkanartikel() async {
    var response = await Dio().get('https://api.indosiana.com/api/articles');
    return artikel.fromJson(response.data);
  }

  Future<detail_Artikel> tampilkanDetail_artikel({String? id}) async {
    var response = await Dio()
        .get('https://api.indosiana.com/api/articles/id_artikel/$id');
    return detail_Artikel.fromJson(response.data);
  }
}
