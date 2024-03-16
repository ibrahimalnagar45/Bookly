import 'package:dio/dio.dart';

abstract class Failure {
  final String errorMessage;

  const Failure({required this.errorMessage});
}

class ServerFailure extends Failure {
  ServerFailure({required super.errorMessage});

  factory ServerFailure.fromDioError(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(errorMessage: 'Connection Timeout With ApiServer');

      case DioExceptionType.sendTimeout:
        return ServerFailure(errorMessage: 'Sending Timeout With ApiServer');

      case DioExceptionType.receiveTimeout:
        return ServerFailure(errorMessage: 'Recive Timeout With ApiServer');

      case DioExceptionType.badCertificate:
        return ServerFailure(
            errorMessage:
                'There is an error with the certification, Pleasr try agian later');
      case DioExceptionType.badResponse:
        return ServerFailure.fromRresponse(
            dioException.response!.statusCode!, dioException.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure(errorMessage: 'Request Was Canceld');
      case DioExceptionType.connectionError:
        return ServerFailure(
            errorMessage:
                'There Is A Connection Error, Please Check your Connection');

      case DioExceptionType.unknown:
        if (dioException.message!.contains('SocketException')) {
          return ServerFailure(errorMessage: 'No internet Connection');
        }
        return ServerFailure(
            errorMessage: 'Unexpected Error, Please Try again ');
      default:
        return ServerFailure(
            errorMessage: 'Opps there is an error, Please try later');
    }
  }

  factory ServerFailure.fromRresponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(errorMessage: response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure(
          errorMessage: 'Your Request Not Found, Please try Again');
    } else if (statusCode == 500) {
      return ServerFailure(errorMessage: 'Server Error, Please try later');
    } else {
      return ServerFailure(
          errorMessage: 'there is An Error, Please Try Agian Later');
    }
  }
}
