/// Represents a generic failure in the application.
abstract class Failure {
  /// A message describing the failure.
  final String message;

  /// An optional error code associated with the failure.
  final int? code;

  /// Creates a [Failure] with the given [message] and optional [code].
  const Failure(this.message, {this.code});

  @override
  String toString() => 'Failure(message: $message, code: $code)';
}

/// Represents a failure caused by an issue with the server.
class ServerFailure extends Failure {
  /// Creates a [ServerFailure] with the given [message] and optional [code].
  const ServerFailure(super.message, {super.code});

  @override
  String toString() => 'ServerFailure(message: $message, code: $code)';
}