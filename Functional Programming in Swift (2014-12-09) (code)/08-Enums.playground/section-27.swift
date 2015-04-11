enum Result<T> {
    case Success(Box<T>)
    case Failure(NSError)
}