import 'package:get/get.dart';

import 'network_utils.dart';

class ApiConnect extends GetConnect {

  Future<Response> requestPost(Map data, String url) => post(
    '$base_url$url',
    data,
    contentType: 'application/x-www-form-urlencoded',
    headers: {
      'x-api-key': 'CODEX@123',
    }
  );
}