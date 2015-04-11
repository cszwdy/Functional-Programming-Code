func ??<T>(result: Result<T>, handleError: NSError -> T) -> T {
    switch result {
        case let Result.Success(box):
            return box.unbox
        case let Result.Failure(error):
            return handleError(error)
    }
}