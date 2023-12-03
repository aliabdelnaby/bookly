import 'package:dio/dio.dart';

abstract class Failure {
  final String errMessage;

  Failure(this.errMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errMessage);

  factory ServerFailure.dioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure("Connection Time out with Api Server");
      case DioExceptionType.sendTimeout:
        return ServerFailure("Send Time out with Api Server");
      case DioExceptionType.receiveTimeout:
        return ServerFailure("Receive Time out with Api Server");
      case DioExceptionType.badCertificate:
        return ServerFailure("Bad Certificate with Api Server");

      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            dioException.response!.statusCode!, dioException.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure("Request to Api Server was canceld");
      case DioExceptionType.connectionError:
        return ServerFailure("Connection Error with Api Server");
      case DioExceptionType.unknown:
        if (dioException.message!.contains("SocketException")) {
          return ServerFailure("No Internet Connection");
        }
        return ServerFailure("Unexpected error, Please try again!");

      default:
        return ServerFailure("Opps There was an error, Please try again!");
    }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response["error"]["message"]);
    } else if (statusCode == 404) {
      return ServerFailure("Your request Not Found, Please try later!");
    } else if (statusCode == 500) {
      return ServerFailure("Internal Server error, Please try later!");
    } else {
      return ServerFailure("Opps There was an error, Please try again!");
    }
  }
}
