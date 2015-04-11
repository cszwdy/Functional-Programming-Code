func readFile(path: String, encoding: Encoding) -> ReadFileResult {
    var maybeError: NSError?
    let maybeString: String? = NSString(contentsOfFile: path,
          encoding: toNSStringEncoding(encoding), error: &maybeError)
    if let string = maybeString {
        return ReadFileResult.Success(string)
    } else if let error = maybeError {
        return ReadFileResult.Failure(error)
    } else {
        assert(false, "The impossible occurred")
    }
}