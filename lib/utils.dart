typedef ApiServiceResultOrError<T> = Future<(String? errList, T? data)>;

enum Environment {
  staging,
  production,
  development,
}