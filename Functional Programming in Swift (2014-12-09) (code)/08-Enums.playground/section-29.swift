func map<T, U>(f: T -> U, result: Result<T>) -> Result<U> {
    switch result {
        case let Result.Success(box):
            return Result.Success(Box(f(box.unbox)))
        case let Result.Failure(error):
            return Result.Failure(error)
    }
}