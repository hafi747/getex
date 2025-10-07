class AppException implements Exception {
  final _missage;
  final _prefix;
  AppException([this._missage, this._prefix]);
  String toString() {
    return '$_missage$_prefix';
  }
}

class FetchDataException extends AppException {
  FetchDataException([String? message])
    : super(message, "Error During Communication: ");
}

class InternetException extends AppException {
  InternetException([String? message])
    : super(message, "No Internet Connection: ");
}

class BadRequestException extends AppException {
  BadRequestException([String? message]) : super(message, "Invalid Request: ");
}
