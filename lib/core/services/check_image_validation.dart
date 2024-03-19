 
import 'package:dio/dio.dart';

  
 Future<bool> validImageOrNor(String? url) async {

    if(url == null ){
      return false ; 
    }
  var response = await Dio().get(url);
  print(' the image  ${response.data}');
  if (response.statusCode == 200) {
    return true;
  }
  return false ;
}
