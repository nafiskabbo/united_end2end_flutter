import 'package:dio/dio.dart';
import 'package:united_end2end/core/di/app_injections.dart';
import 'package:united_end2end/core/network/network_config.dart';
import 'package:united_end2end/core/services/shared_prefs_helper.dart';
import 'package:united_end2end/main.dart';

class DioInterceptor extends InterceptorsWrapper {
  @override
  Future onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    logger.i("Request[${options.method}] => PATH: ${options.path}");

    final sharedPref = getIt<SharedPrefsHelper>();
    String sessionToken = sharedPref.sessionToken;
    if (sessionToken.isEmpty) {
      logger.i('trying to send request without token exist!');
      return super.onRequest(options, handler);
    }

    options.headers[NetworkConfig.sessionTokenName] = sessionToken;
    return super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    logger.i("Response Status Code: [$response]");
    super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    logger.e("Error[${err.response?.statusCode}] => PATH: ${err.requestOptions.path}");
    super.onError(err, handler);
  }
}
