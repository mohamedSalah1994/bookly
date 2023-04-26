import 'package:dio/dio.dart';

abstract class Failure {
  final String errMessage;

  Failure(this.errMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errMessage);

  factory ServerFailure.fromDioError(DioError dioError) {
    switch (dioError.type) {
      case DioErrorType.connectionTimeout:
        return ServerFailure('Connection timeout with ApiServer');

      case DioErrorType.sendTimeout:
        return ServerFailure('Send timeout with ApiServer');

      case DioErrorType.receiveTimeout:
        return ServerFailure('Receive timeout with ApiServer');

      case DioErrorType.badCertificate:
        return ServerFailure('badCertificate with ApiServer');

      case DioErrorType.badResponse:
        return ServerFailure.fromResponse(
            dioError.response!.statusCode!, dioError.response!.data);

      case DioErrorType.cancel:
        return ServerFailure('request to ApiServer was canceled');
      case DioErrorType.connectionError:
        return ServerFailure('connectionError with ApiServer');
      case DioErrorType.unknown:
        if (dioError.message!.contains('SoketException')) {
          return ServerFailure('No internet connection');
        }
        return ServerFailure('Unexpected error , please try again later');
      default:
        return ServerFailure('Opps there was an error , please try again');
    }
  }
  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure('your request not found , please try again later');
    } else if (statusCode == 500) {
      return ServerFailure('internal server error , please try again later');
    } else {
      return ServerFailure('Opps there was an error , please try again');
    }
  }
}
