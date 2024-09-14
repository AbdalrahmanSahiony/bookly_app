import 'package:dio/dio.dart';

abstract class Failur {
  final String errorMessage;

  Failur({required this.errorMessage});
}

class SeirveFailur extends Failur {
  SeirveFailur({required super.errorMessage});
  factory SeirveFailur.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return SeirveFailur(errorMessage: "Connection timeout with apiServer");
      case DioExceptionType.sendTimeout:
        return SeirveFailur(errorMessage: "Send timeout with apiServer");
      case DioExceptionType.receiveTimeout:
        return SeirveFailur(errorMessage: "Recive timeout with apiServer");
      case DioExceptionType.badCertificate:
      // TODO: Handle this case.
      case DioExceptionType.badResponse:
        return SeirveFailur.fromRespone(
            dioError.response!.statusCode!, dioError.response);
      case DioExceptionType.cancel:
        return SeirveFailur(errorMessage: "Connection to api was canceled");
      case DioExceptionType.connectionError:
        return SeirveFailur(errorMessage: "No Internet Connection");
      case DioExceptionType.unknown:
        return SeirveFailur(errorMessage: "Unexpected Error Try Again");
      default:
        return SeirveFailur(
            errorMessage: "Opps There was an errror please try again");
    }
  }

  factory SeirveFailur.fromRespone(int statuseCode, dynamic response) {
    if (statuseCode == 400 || statuseCode == 401 || statuseCode == 403) {
      return SeirveFailur(errorMessage: "Bad Request");
    } else if (statuseCode == 404) {
      return SeirveFailur(
          errorMessage: "Your request not found please try again");
    } else if (statuseCode == 500) {
      return SeirveFailur(errorMessage: "Intenal Server please try again");
    } else {
      return SeirveFailur(
          errorMessage: "Opps There was an errror please try again");
    }
  }
}
