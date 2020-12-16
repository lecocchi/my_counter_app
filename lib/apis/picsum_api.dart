import 'package:dio/dio.dart';
import 'package:my_counter_app/models/picsum_model.dart';

class PicsumApi {
  Future<List<PicsumModel>> getPicsumData() async {
    final dio = new Dio();

    try {
      Response response = await dio.get('https://picsum.photos/v2/li');

      return (response.data as List)
          .map((p) => PicsumModel.fromJson(p))
          .toList();

      // List<PicsumModel> list = [];

      // for (var p in response.data) {
      //   list.add(PicsumModel.fromJson(p));
      // }

      // return list;
    } catch (e) {
      throw new Error();
      // print('Hubo un error');
    }
  }
}
