import 'package:dio/dio.dart';
import "package:rxdart/rxdart.dart";
import "package:flutter_swan/Qunar/base/constant/q_server.dart";

typedef T OnTransformResponse<T>(Options options, dynamic response);

class NetRequestCommander {
  static final Map<int, NetRequestCommander> _cache = <int, NetRequestCommander>{};

  Dio _dio;

  factory NetRequestCommander.request(METHOD method) {
    // int key = method?.index ?? 0;
    // if (_cache.containsKey(key)) {
    //   return _cache[key];
    // } else {
    //   final NetRequestCommander networkFactory = NetRequestCommander._();
    //   _cache[key] = networkFactory;
    //   return networkFactory;
    // }
    return NetRequestCommander._();
  }

  NetRequestCommander._() {
    _dio = Dio(
      Options(baseUrl: QServer.release),
    )
      // ..transformer = BaseTransformer()
      ..interceptor.request.onSend = (Options options) {
        return options;
      };
  }

  Dio get dio => _dio;

  Future<Response<T>> post<T>(String path, dynamic data, {bool stringify}) {
    print("$path?${NetRequestCommander.stringify(data)}");
    if (stringify) {
      return dio.post<T>("$path?${NetRequestCommander.stringify(data)}");
    } else {
      return dio.post<T>(path, data: data);
    }
  }

  Future<List<Response<T>>> multiplePosts<T>(List<dynamic> posts) {
    return Future.wait(posts.map<Future>((post) {
      return dio.post<T>("${post.path}?${NetRequestCommander.stringify(post.data)}");
    }));
  }

  FormData withFormData(dynamic data) {
    return FormData.from({
      "RN": 1,
    });
  }

  static String stringify(Map<dynamic, dynamic> data) {
      StringBuffer stringify = StringBuffer();
      data?.forEach((key, value) {
        stringify..write("&")..write(key)..write("=")..write(value);
      });
      return stringify.toString().substring(1);
  }
}

enum METHOD {
  BOOK,
}
