/**
 * helper 方法
 */

import 'package:dio/dio.dart'; // http请求库, 最新版本3.x.x

final String address =
    'https://mobile-ms.uat.homecreditcfc.cn/mock/60ac9a494a9639001d426db0/example';

// get 请求
get(url) async {
  try {
    Response response;
    response = await Dio().get("$address/$url");
    return response.data;
  } catch (e) {
    print(e);
  }
}

// post 请求
post(url, params) async {
  Response response;
  response = await Dio().post('$address/$url', data: params);

  return response;
}

