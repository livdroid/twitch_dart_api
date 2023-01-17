import 'package:dartz/dartz.dart';

extension EitherHelpers<L, R> on Either<L, R> {
  R? unwrapRight() {
    return toOption().toNullable();
  }
}

extension EitherX<L, R> on Either<L, R> {
  R asRight() => (this as Right).value; //
  L asLeft() => (this as Left).value;
}
