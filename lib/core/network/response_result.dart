abstract class ResponseResult<T> {
  ResponseResult();
}

class Success<T> extends ResponseResult<T> {
  final T data;

  Success(this.data);
}

class Failure<T> extends ResponseResult<T> {
  final String errorMessage;

  Failure(this.errorMessage);
}
