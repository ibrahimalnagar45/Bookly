import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

  validImageOrNor(String url) async {
  var response = await Dio().get(url);
  print(' the image  ${response.data}');
  if (response.statusCode == 200) {
    return url;
  }
  return '';
}
