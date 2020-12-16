import 'package:flutter/foundation.dart';
import 'package:my_counter_app/apis/picsum_api.dart';
import 'package:my_counter_app/models/picsum_model.dart';

class HomeBloc extends ChangeNotifier {
  int _counter = 0;
  String error;
  var picsumApi = new PicsumApi();

  int get counter => _counter;

  void increment() {
    _counter++;
    notifyListeners();
  }

  String greeting() {
    return 'Hello World';
  }

  Future<List<PicsumModel>> getAllPicsum() {
    try {
      return picsumApi.getPicsumData();
    } catch (e) {
      return Future.value([]);
    }
  }
}
