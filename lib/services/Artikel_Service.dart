import 'package:dio/dio.dart';
import 'package:uas_artikel/models/artikelModel.dart';

class artikelService {
  Future<artikelModel> getArtikel() async {
    try {
      var response = await Dio().get('https://api.indosiana.com/api/articles');

      return artikelModel.fromJson({"data": response.data});
    } on DioError catch (e) {
      print(e);
      return artikelModel.fromJson({});
    }
  }
}
