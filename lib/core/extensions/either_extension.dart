import 'package:fpdart/fpdart.dart';

Either<E, R> fail<E, R>(E exception) => Left(exception);

Either<E, R> success<E, R>(R value) => Right(value);

extension EitherExtension<L, R> on Either<L, R> {
  bool get isSuccess => isRight();
  bool get isFailed => !isSuccess;

  TaskEither<C, B> asyncFold<C, B>({
    required Future<C> Function(L error) failure,
    required Future<B> Function(R result) success,
  }) {
    return toTaskEither().asyncMapRight(success).asyncMapLeft(failure);
  }

  Either<C, R> onFailure<C>(C Function(L error) onFailure) {
    return mapLeft(onFailure);
  }

  Either<L, B> onSuccess<B>(B Function(R result) onSuccess) {
    return map(onSuccess);
  }
}

typedef FutureEither<L, C> = Future<Either<L, C>>;

extension TaskEitherExtension<L, C> on TaskEither<L, C> {
  Future<bool> get isSuccess => match((_) => false, (_) => true).run();
  Future<bool> get isFailed async => !(await isSuccess);

  TaskEither<L, R> asyncMap<R>(FutureEither<L, R> Function(C r) f) =>
      TaskEither(
        () => run().then(
          (either) async => either.match(
            left,
            (r) => TaskEither(() => f(r)).run(),
          ),
        ),
      );

  TaskEither<L, C> asyncBind(FutureEither<L, C> Function(C r) f) {
    return asyncMap(f);
  }

  Future<C?> getOrNull() => match((error) => null, (right) => right).run();

  TaskEither<L, V> mapRight<V>(Future<V> Function(C r) f) => TaskEither(
        () async => (await run()).match(
          (l) => Either.left(l),
          (r) async => Either.right(await f(r)),
        ),
      );

  TaskEither<T1, T2> asyncBimap<T1, T2>({
    required Future<T1> Function(L error) failure,
    required Future<T2> Function(C result) success,
  }) {
    return asyncMapLeft(failure).asyncMapRight(success);
  }

  Future<T> asyncFoldEither<T>(Future<T> Function(Either<L, C>) f) async {
    final either = await run();

    return f(either);
  }

  Future<T> asyncFold<T>({
    required Future<T> Function(L error) failure,
    required Future<T> Function(C result) success,
  }) async {
    return asyncFoldEither((either) {
      return fold(failure: failure, success: success);
    });
  }

  Future<T> fold<T>({
    required Future<T> Function(L error) failure,
    required Future<T> Function(C result) success,
  }) async {
    return await isSuccess
        ? success((await this.getOrNull()) as C)
        : failure((await swap().getOrNull()) as L);
  }

  TaskEither<L, C> onFailure(Future<void> Function(L error) onFailure) {
    return TaskEither(
      () async => (await run()).match(
        (l) async {
          await onFailure(l);
          return Either.left(l);
        },
        (r) => Either.right(r),
      ),
    );
  }

  TaskEither<L, C> onSuccess(Future<void> Function(C result) onSuccess) {
    return TaskEither(
      () async => (await run()).match(
        (l) async => Either.left(l),
        (r) async {
          await onSuccess(r);
          return Either.right(r);
        },
      ),
    );
  }

  TaskEither<B, C> asyncMapLeft<B>(Future<B> Function(L l) f) => TaskEither(
        () async => (await run()).match(
          (l) async => Either.left(await f(l)),
          (r) => Either.right(r),
        ),
      );

  TaskEither<L, B> asyncMapRight<B>(Future<B> Function(C r) f) => TaskEither(
        () async => (await run()).match(
          (l) => Either.left(l),
          (r) async => Either.right(await f(r)),
        ),
      );
}

extension FutureEitherExtension<L, C> on FutureEither<L, C> {
  TaskEither<L, C> toTaskEither() => TaskEither(() async => this);
}
