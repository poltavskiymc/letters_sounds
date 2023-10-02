abstract class AppError {
  final String? message;
  final String? stackTrace;

  const AppError(this.message, [this.stackTrace]);

  @override
  String toString() {
    return '[-->App error\ntype: ${runtimeType.toString()}\nmessage: $message\nstackTrace: $stackTrace\n<--]';
  }
}

class ServerError extends AppError {
  ServerError([String? message, String? stackTrace])
      : super(message, stackTrace);
}
