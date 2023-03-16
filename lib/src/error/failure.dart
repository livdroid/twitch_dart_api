/// Type returned with Either when an error was thrown
class Failure {
  final Exception exception;
  Failure(this.exception);
}