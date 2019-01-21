import 'dart:async';

import 'package:flutter_swan/Qunar/base/network/response/search.dart';
import 'package:flutter_swan/Qunar/page/DestSearch/backend.dart';
import 'package:flutter_swan/base/bloc/helper/bloc_provider.dart';
import 'package:rxdart/rxdart.dart';

class DestSearchFormBloc extends Object with SuggestTransform implements BlocBase {
  final BehaviorSubject<String> _suggestController = BehaviorSubject<String>();

  Function(String) get onSuggestTextChanged => _suggestController.sink.add;

  Stream<SuggestList> get suggest => _suggestController.stream.debounce(Duration(milliseconds: 250)).transform(
        suggestShift,
      );

  @override
  void dispose() {
    _suggestController?.close();
  }
}

class SuggestTransform {
  final StreamTransformer<String, SuggestList> suggestShift = StreamTransformer<String, SuggestList>.fromHandlers(
    handleData: (keyword, sink) {
      if (keyword?.isEmpty ?? true) {
        sink.add(SuggestList.empty());
      } else {
        Backend.requestApiSuggestDest({
          "query": keyword,
          "cityId": "299914",
          "cityName": "北京",
          "locateName": "北京",
          "type": 0,
          "vid": 80005900,
          "maxType": 39,
          "lcid": "299914",
          "latlng": null,
        }).listen((data) {
          sink.add(data);
        });
      }
    },
  );
}
